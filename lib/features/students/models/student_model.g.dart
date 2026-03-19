// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStudentCollection on Isar {
  IsarCollection<Student> get students => this.collection();
}

const StudentSchema = CollectionSchema(
  name: r'Student',
  id: -252783119861727542,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'nis': PropertySchema(
      id: 1,
      name: r'nis',
      type: IsarType.string,
    ),
    r'nisn': PropertySchema(
      id: 2,
      name: r'nisn',
      type: IsarType.string,
    ),
    r'rollNum': PropertySchema(
      id: 3,
      name: r'rollNum',
      type: IsarType.string,
    )
  },
  estimateSize: _studentEstimateSize,
  serialize: _studentSerialize,
  deserialize: _studentDeserialize,
  deserializeProp: _studentDeserializeProp,
  idName: r'studentId',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'rollNum': IndexSchema(
      id: 7632504814165086755,
      name: r'rollNum',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'rollNum',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'schClass': LinkSchema(
      id: 8337288496349495645,
      name: r'schClass',
      target: r'SchoolClass',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _studentGetId,
  getLinks: _studentGetLinks,
  attach: _studentAttach,
  version: '3.1.0+1',
);

int _studentEstimateSize(
  Student object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.nis.length * 3;
  bytesCount += 3 + object.nisn.length * 3;
  bytesCount += 3 + object.rollNum.length * 3;
  return bytesCount;
}

void _studentSerialize(
  Student object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeString(offsets[1], object.nis);
  writer.writeString(offsets[2], object.nisn);
  writer.writeString(offsets[3], object.rollNum);
}

Student _studentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Student();
  object.name = reader.readString(offsets[0]);
  object.nis = reader.readString(offsets[1]);
  object.nisn = reader.readString(offsets[2]);
  object.rollNum = reader.readString(offsets[3]);
  object.studentId = id;
  return object;
}

P _studentDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _studentGetId(Student object) {
  return object.studentId;
}

List<IsarLinkBase<dynamic>> _studentGetLinks(Student object) {
  return [object.schClass];
}

void _studentAttach(IsarCollection<dynamic> col, Id id, Student object) {
  object.studentId = id;
  object.schClass
      .attach(col, col.isar.collection<SchoolClass>(), r'schClass', id);
}

extension StudentQueryWhereSort on QueryBuilder<Student, Student, QWhere> {
  QueryBuilder<Student, Student, QAfterWhere> anyStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Student, Student, QAfterWhere> anyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'name'),
      );
    });
  }
}

extension StudentQueryWhere on QueryBuilder<Student, Student, QWhereClause> {
  QueryBuilder<Student, Student, QAfterWhereClause> studentIdEqualTo(
      Id studentId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: studentId,
        upper: studentId,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> studentIdNotEqualTo(
      Id studentId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: studentId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: studentId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: studentId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: studentId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> studentIdGreaterThan(
      Id studentId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: studentId, includeLower: include),
      );
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> studentIdLessThan(
      Id studentId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: studentId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> studentIdBetween(
    Id lowerStudentId,
    Id upperStudentId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerStudentId,
        includeLower: includeLower,
        upper: upperStudentId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> nameNotEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> nameGreaterThan(
    String name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [name],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> nameLessThan(
    String name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [],
        upper: [name],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> nameBetween(
    String lowerName,
    String upperName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [lowerName],
        includeLower: includeLower,
        upper: [upperName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> nameStartsWith(
      String NamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [NamePrefix],
        upper: ['$NamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [''],
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> rollNumEqualTo(
      String rollNum) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rollNum',
        value: [rollNum],
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> rollNumNotEqualTo(
      String rollNum) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rollNum',
              lower: [],
              upper: [rollNum],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rollNum',
              lower: [rollNum],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rollNum',
              lower: [rollNum],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rollNum',
              lower: [],
              upper: [rollNum],
              includeUpper: false,
            ));
      }
    });
  }
}

extension StudentQueryFilter
    on QueryBuilder<Student, Student, QFilterCondition> {
  QueryBuilder<Student, Student, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nis',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nis',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nisn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nisn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nisn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nisn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nisn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nisn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nisn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nisn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nisn',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nisnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nisn',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rollNum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rollNum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rollNum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rollNum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rollNum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rollNum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rollNum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rollNum',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rollNum',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> rollNumIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rollNum',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'studentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'studentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'studentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'studentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StudentQueryObject
    on QueryBuilder<Student, Student, QFilterCondition> {}

extension StudentQueryLinks
    on QueryBuilder<Student, Student, QFilterCondition> {
  QueryBuilder<Student, Student, QAfterFilterCondition> schClass(
      FilterQuery<SchoolClass> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'schClass');
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> schClassIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'schClass', 0, true, 0, true);
    });
  }
}

extension StudentQuerySortBy on QueryBuilder<Student, Student, QSortBy> {
  QueryBuilder<Student, Student, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nis', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nis', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNisn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nisn', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNisnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nisn', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByRollNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rollNum', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByRollNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rollNum', Sort.desc);
    });
  }
}

extension StudentQuerySortThenBy
    on QueryBuilder<Student, Student, QSortThenBy> {
  QueryBuilder<Student, Student, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nis', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nis', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNisn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nisn', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNisnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nisn', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByRollNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rollNum', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByRollNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rollNum', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }
}

extension StudentQueryWhereDistinct
    on QueryBuilder<Student, Student, QDistinct> {
  QueryBuilder<Student, Student, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByNis(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nis', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByNisn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nisn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByRollNum(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rollNum', caseSensitive: caseSensitive);
    });
  }
}

extension StudentQueryProperty
    on QueryBuilder<Student, Student, QQueryProperty> {
  QueryBuilder<Student, int, QQueryOperations> studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> nisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nis');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> nisnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nisn');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> rollNumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rollNum');
    });
  }
}
