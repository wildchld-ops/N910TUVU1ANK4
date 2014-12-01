.class public Lcom/voovio/voo3d/geometry/Geometry3D;
.super Ljava/lang/Object;
.source "Geometry3D.java"


# instance fields
.field public m_aEdges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/voo3d/geometry/Edge3D;",
            ">;"
        }
    .end annotation
.end field

.field public m_aPolygons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/voo3d/geometry/Polygon3D;",
            ">;"
        }
    .end annotation
.end field

.field public m_aVertices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/voo3d/geometry/Vertex3D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aEdges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aPolygons:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public Read(Ljava/nio/ByteBuffer;)V
    .locals 19

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v7, :cond_2

    return-void

    :cond_0
    new-instance v15, Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-direct {v15}, Lcom/voovio/voo3d/geometry/Vertex3D;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/voovio/io/Input;->ReadVector3(Ljava/nio/ByteBuffer;Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    new-instance v13, Lcom/voovio/voo3d/geometry/Edge3D;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lcom/voovio/voo3d/geometry/Edge3D;-><init>(Lcom/voovio/voo3d/geometry/Vertex3D;Lcom/voovio/voo3d/geometry/Vertex3D;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v14, Lcom/voovio/voo3d/geometry/Polygon3D;

    invoke-direct {v14}, Lcom/voovio/voo3d/geometry/Polygon3D;-><init>()V

    iput v3, v14, Lcom/voovio/voo3d/geometry/Polygon3D;->m_nId:I

    new-instance v16, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct/range {v16 .. v16}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/voovio/io/Input;->ReadVector3(Ljava/nio/ByteBuffer;Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    const/4 v4, 0x0

    :goto_3
    if-lt v4, v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const/4 v4, 0x0

    :goto_4
    if-lt v4, v6, :cond_5

    if-lez v12, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/voovio/voo3d/geometry/Polygon3D;->SetNormal(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aPolygons:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/voovio/voo3d/geometry/Vertex3D;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/voovio/voo3d/geometry/Polygon3D;->AddVertex(Lcom/voovio/voo3d/geometry/Vertex3D;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/voovio/voo3d/geometry/Edge3D;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v2}, Lcom/voovio/voo3d/geometry/Polygon3D;->AddEdge(Lcom/voovio/voo3d/geometry/Edge3D;F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public TestCollision(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aPolygons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    :goto_1
    return-object p2

    :cond_0
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aPolygons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/voo3d/geometry/Polygon3D;

    invoke-virtual {v2, p1, p2}, Lcom/voovio/voo3d/geometry/Polygon3D;->TestCollision(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, v2, Lcom/voovio/voo3d/geometry/Polygon3D;->m_ptI:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Transform(Lcom/voovio/voo3d/data/Matrix4;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/voovio/voo3d/data/Matrix4;->clone()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Matrix4;->transpose()V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aPolygons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    return-void

    :cond_0
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v3}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aPolygons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/geometry/Polygon3D;

    iget-object v2, v3, Lcom/voovio/voo3d/geometry/Polygon3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v3, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aPolygons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/voo3d/geometry/Polygon3D;

    invoke-virtual {v3, v2}, Lcom/voovio/voo3d/geometry/Polygon3D;->SetNormal(Lcom/voovio/voo3d/data/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public Write(Lcom/voovio/io/LittleEndianDataOutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v8, :cond_0

    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v4, :cond_1

    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aPolygons:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v5, :cond_2

    return-void

    :cond_0
    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/voovio/voo3d/data/Vector3;

    invoke-static {p1, v12}, Lcom/voovio/io/Output;->WriteVector3(Lcom/voovio/io/LittleEndianDataOutputStream;Lcom/voovio/voo3d/data/Vector3;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voovio/voo3d/geometry/Edge3D;

    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    iget-object v13, v9, Lcom/voovio/voo3d/geometry/Edge3D;->m_v0:Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    iget-object v13, v9, Lcom/voovio/voo3d/geometry/Edge3D;->m_v1:Lcom/voovio/voo3d/geometry/Vertex3D;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aPolygons:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/voovio/voo3d/geometry/Polygon3D;

    iget-object v12, v10, Lcom/voovio/voo3d/geometry/Polygon3D;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {p1, v12}, Lcom/voovio/io/Output;->WriteVector3(Lcom/voovio/io/LittleEndianDataOutputStream;Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v12, v10, Lcom/voovio/voo3d/geometry/Polygon3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v8, :cond_3

    iget-object v12, v10, Lcom/voovio/voo3d/geometry/Polygon3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_4
    if-lt v2, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v12, v10, Lcom/voovio/voo3d/geometry/Polygon3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aVertices:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v12, v10, Lcom/voovio/voo3d/geometry/Polygon3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voovio/voo3d/geometry/Edge3D;

    iget-object v12, p0, Lcom/voovio/voo3d/geometry/Geometry3D;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v12, v10, Lcom/voovio/voo3d/geometry/Polygon3D;->m_aEdgeDirs:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v3}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    invoke-virtual {p1, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
