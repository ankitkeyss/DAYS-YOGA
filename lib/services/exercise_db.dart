import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:yoga_apps/models/model.dart';

class Exercise_Database {
  static final Exercise_Database instance=Exercise_Database._init();
  static Database? _database;
  Exercise_Database._init();

  Future<Database>_initialzeDB(String  filepath)async{
    final dbpath=await getDatabasesPath();
    final path = join(dbpath,filepath);

    return await openDatabase(path,version: 1,onCreate: _createDB);



  }
  Future<Database?>get database async{
    if(Database==null)
      return _database;
    _database =await _initialzeDB("ExerciseStepsDB.db");
    return _database;
  }

  Future _createDB(Database db,int version)async{
    final idtype='INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType='TEXT NOT NULL';
    final boolType='BOOLEAN NOT NULL';
   // id ,text,bool(second),
    await db.execute('''CREATE TABLE beginnerExercise(
    ${ExerciseModel.IDName}$idtype;
    ${ExerciseModel.ExerciseName}$textType;
    ${ExerciseModel.ImageName}$boolType;
    ${ExerciseModel.SecondsorNot}$boolType;
    )''');
  }

}