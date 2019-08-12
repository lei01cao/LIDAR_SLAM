/****************************************************************************
** Meta object code from reading C++ file 'turtle_frame.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/ros_tutorials/turtlesim/include/turtlesim/turtle_frame.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'turtle_frame.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_turtlesim__TurtleFrame_t {
    QByteArrayData data[3];
    char stringdata0[33];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_turtlesim__TurtleFrame_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_turtlesim__TurtleFrame_t qt_meta_stringdata_turtlesim__TurtleFrame = {
    {
QT_MOC_LITERAL(0, 0, 22), // "turtlesim::TurtleFrame"
QT_MOC_LITERAL(1, 23, 8), // "onUpdate"
QT_MOC_LITERAL(2, 32, 0) // ""

    },
    "turtlesim::TurtleFrame\0onUpdate\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_turtlesim__TurtleFrame[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   19,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,

       0        // eod
};

void turtlesim::TurtleFrame::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TurtleFrame *_t = static_cast<TurtleFrame *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->onUpdate(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject turtlesim::TurtleFrame::staticMetaObject = {
    { &QFrame::staticMetaObject, qt_meta_stringdata_turtlesim__TurtleFrame.data,
      qt_meta_data_turtlesim__TurtleFrame,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *turtlesim::TurtleFrame::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *turtlesim::TurtleFrame::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_turtlesim__TurtleFrame.stringdata0))
        return static_cast<void*>(const_cast< TurtleFrame*>(this));
    return QFrame::qt_metacast(_clname);
}

int turtlesim::TurtleFrame::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QFrame::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
