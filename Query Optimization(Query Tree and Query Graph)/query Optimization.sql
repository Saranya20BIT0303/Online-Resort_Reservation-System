-- Relation
Room(
    {RoomNo,Rate,Single,Double,Large}
)
Resort(
    {Rname,ResortId,address,RoomNum}
)
Workers(
    {Wname,wrkId,address,ResId}
)

--  SQL Query

SELECT Rname
FROM Room,Resort,Workers
WHERE Wname="Priya" AND ResortId=ResId AND RoomNO=RoomNum AND Rate<20000;

-- Relational Algebra

пRname (σWname="Priya" AND ResortId=ResId AND RoomNO=RoomNum AND Rate<20000(Workers ✖ (Resort ✖ Room)))

