.class public final Lcom/voovio/sweep/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# instance fields
.field private m_aTemplateGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/TemplateGroup;",
            ">;"
        }
    .end annotation
.end field

.field private m_aTemplateIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m_strImageAspect:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateIcons:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    sget-object v0, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_HORIZONTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/voovio/sweep/TemplateManager;->m_strImageAspect:Ljava/lang/String;

    return-void
.end method

.method public static createTemplateManager(Ljava/io/InputStream;)Lcom/voovio/sweep/TemplateManager;
    .locals 2

    invoke-static {p0}, Lcom/voovio/util/ConversionUtil;->InputStream2ByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/voovio/sweep/TemplateManager;->createTemplateManager(Ljava/nio/ByteBuffer;)Lcom/voovio/sweep/TemplateManager;

    move-result-object v1

    return-object v1
.end method

.method private static createTemplateManager(Ljava/nio/ByteBuffer;)Lcom/voovio/sweep/TemplateManager;
    .locals 9

    new-instance v7, Lcom/voovio/sweep/TemplateManager;

    invoke-direct {v7}, Lcom/voovio/sweep/TemplateManager;-><init>()V

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    return-object v7

    :cond_0
    new-instance v6, Lcom/voovio/sweep/TemplateGroup;

    invoke-direct {v6}, Lcom/voovio/sweep/TemplateGroup;-><init>()V

    invoke-static {p0}, Lcom/voovio/io/Input;->ReadString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/voovio/sweep/TemplateGroup;->setName(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/voovio/sweep/TemplateManager;->m_strImageAspect:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/voovio/sweep/TemplateGroup;->setImageAspect(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/voovio/sweep/Template;

    invoke-direct {v5}, Lcom/voovio/sweep/Template;-><init>()V

    invoke-virtual {v5, v0}, Lcom/voovio/sweep/Template;->setId(I)V

    invoke-virtual {v5, p0}, Lcom/voovio/sweep/Template;->Read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v5}, Lcom/voovio/sweep/Template;->getGroupId()I

    move-result v1

    if-lez v2, :cond_2

    if-ltz v1, :cond_2

    if-ge v1, v2, :cond_2

    iget-object v8, v7, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voovio/sweep/TemplateGroup;

    invoke-virtual {v6, v5}, Lcom/voovio/sweep/TemplateGroup;->addTemplate(Lcom/voovio/sweep/Template;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getGroup(I)Lcom/voovio/sweep/TemplateGroup;
    .locals 2

    iget-object v1, p0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/TemplateGroup;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageAspect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/TemplateManager;->m_strImageAspect:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate(I)Lcom/voovio/sweep/Template;
    .locals 5

    iget-object v4, p0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/TemplateGroup;

    invoke-virtual {v3, p1}, Lcom/voovio/sweep/TemplateGroup;->getTemplate(I)Lcom/voovio/sweep/Template;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIcons(Landroid/graphics/Bitmap;II)V
    .locals 16

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-gtz p2, :cond_2

    const/16 p2, 0x64

    :cond_2
    if-gtz p3, :cond_3

    const/16 p3, 0x64

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int v7, v14, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    div-int v11, v14, p3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateIcons:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voovio/sweep/TemplateGroup;

    invoke-virtual {v13}, Lcom/voovio/sweep/TemplateGroup;->getTemplateCount()I

    move-result v10

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v10, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-lt v4, v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    mul-int v14, v4, p2

    mul-int v15, v5, p3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v14, v15, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateIcons:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v13, v5}, Lcom/voovio/sweep/TemplateGroup;->getTemplate(I)Lcom/voovio/sweep/Template;

    move-result-object v12

    invoke-virtual {v12}, Lcom/voovio/sweep/Template;->getIconId()I

    move-result v8

    if-lez v9, :cond_7

    if-ltz v8, :cond_7

    if-ge v8, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateIcons:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v14}, Lcom/voovio/sweep/Template;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public setImageAspect(Ljava/lang/String;)V
    .locals 4

    const-string v3, "horizontal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "vertical"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/voovio/sweep/TemplateManager;->m_strImageAspect:Ljava/lang/String;

    iget-object v3, p0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_2

    return-void

    :cond_1
    sget-object p1, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_HORIZONTAL:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/voovio/sweep/TemplateManager;->m_aTemplateGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/TemplateGroup;

    iget-object v3, p0, Lcom/voovio/sweep/TemplateManager;->m_strImageAspect:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/TemplateGroup;->setImageAspect(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
