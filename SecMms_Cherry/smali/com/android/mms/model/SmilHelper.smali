.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final ELEMENT_TAG_AUDIO:Ljava/lang/String; = "audio"

.field public static final ELEMENT_TAG_IMAGE:Ljava/lang/String; = "img"

.field public static final ELEMENT_TAG_REF:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_TEXT:Ljava/lang/String; = "text"

.field public static final ELEMENT_TAG_VIDEO:Ljava/lang/String; = "video"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/smil"

.field private static final TAGS:[Ljava/lang/String;

.field private static isMixedSmil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<text src=\""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<img src=\""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<audio src=\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<video src=\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "<video region=\"image\" src=\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/model/SmilHelper;->TAGS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2

    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x41000000

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2

    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableOma13NameEncoding()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lorg/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 31

    new-instance v7, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v7}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    const-string v29, "smil"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/smil/SMILElement;

    move-object/from16 v0, v23

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v29, "head"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILElement;

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v29, "layout"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/smil/SMILLayoutElement;

    invoke-interface {v9, v13}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v29, "root-layout"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v29

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v29

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v18

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/model/RegionModel;

    const-string v29, "region"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/smil/SMILRegionElement;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v29, "body"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/model/SlideModel;

    const/16 v28, 0x0

    const/4 v12, 0x0

    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v16

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x447a0000

    div-float v29, v29, v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    move-object/from16 v0, v16

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/model/MediaModel;

    const/16 v22, 0x0

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v26

    instance-of v0, v15, Lcom/android/mms/model/TextModel;

    move/from16 v29, v0

    if-eqz v29, :cond_6

    move-object v0, v15

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "text"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object/from16 v29, v0

    const-string v30, "Text"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    move/from16 v3, v28

    invoke-static {v0, v1, v13, v2, v3}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v28

    :goto_2
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result v4

    if-eqz v4, :cond_4

    const-string v29, "begin"

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v8

    if-eqz v8, :cond_5

    int-to-float v0, v8

    move/from16 v29, v0

    const/high16 v30, 0x447a0000

    div-float v29, v29, v30

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    check-cast v22, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    goto :goto_1

    :catchall_0
    move-exception v29

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v29

    :cond_6
    :try_start_1
    instance-of v0, v15, Lcom/android/mms/model/ImageModel;

    move/from16 v29, v0

    if-eqz v29, :cond_7

    const-string v29, "img"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object/from16 v29, v0

    const-string v30, "Image"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_2

    :cond_7
    instance-of v0, v15, Lcom/android/mms/model/VideoModel;

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const-string v29, "video"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object/from16 v29, v0

    const-string v30, "Image"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto/16 :goto_2

    :cond_8
    instance-of v0, v15, Lcom/android/mms/model/AudioModel;

    move/from16 v29, v0

    if-eqz v29, :cond_9

    const-string v29, "audio"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    goto/16 :goto_2

    :cond_9
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    goto/16 :goto_1

    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 23

    new-instance v6, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v6}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    const-string v21, "smil"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/smil/SMILElement;

    const-string v21, "xmlns"

    const-string v22, "http://www.w3.org/2001/SMIL20/Language"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v21, "head"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/smil/SMILElement;

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v21, "layout"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/smil/SMILLayoutElement;

    invoke-interface {v11, v14}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v21, "body"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILElement;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    if-nez p0, :cond_1

    :cond_0
    return-object v6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v17

    if-eqz v17, :cond_0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    sget-boolean v21, Lcom/android/mms/model/SmilHelper;->isMixedSmil:Z

    if-eqz v21, :cond_6

    if-nez v9, :cond_2

    if-eqz v10, :cond_6

    :cond_2
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    :try_start_0
    new-instance v7, Lcom/android/mms/drm/DrmWrapper;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v7, v5, v0, v1}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V

    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_4
    :goto_2
    const-string v21, "text/plain"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "text/html"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    :cond_5
    const-string v21, "text"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v10, 0x1

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_6
    if-eqz v15, :cond_7

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    :cond_7
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    const/4 v10, 0x0

    const/4 v9, 0x0

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v21, "Mms/smil"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "img"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v13

    invoke-interface {v15, v13}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "video"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v9, 0x1

    goto :goto_3

    :cond_a
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    const-string v21, "audio"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v9, 0x1

    goto :goto_3

    :cond_b
    const-string v21, "Mms/smil"

    const-string v22, "unsupport media type"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 4

    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/model/SmilHelper;->isMixedSmil:Z

    const-string v2, "Mms/smil"

    const-string v3, "getDocument smilPart is null."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static getSecured(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/android/mms/model/SmilHelper;->TAGS:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    const/4 v1, 0x0

    :cond_0
    invoke-static {v4, v5, v6, v1}, Lcom/android/mms/model/SmilHelper;->removeSrcInTag(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v4, "Mms/smil"

    const-string v5, "getSmilDocument milPart.getData(); is null."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "Mms/smil"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/android/mms/model/SmilHelper;->getSecured(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v3

    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v3

    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static removeSrcInTag(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 6

    const/4 v4, -0x1

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v2, v3, v5

    const-string v5, "\""

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v3, v4, :cond_0

    if-ne v0, v4, :cond_2

    :cond_0
    move v0, v4

    :cond_1
    return v0

    :cond_2
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    const/16 v4, 0x78

    invoke-virtual {p1, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static replaceSrcInTagWithFirstMatch(Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 10

    const-string v4, "\""

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, v3}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    const-string v7, "smil"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    const-string v7, "smil.xml"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    const-string v7, "application/smil"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v7, "Mms/smil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    throw v7

    :catch_1
    move-exception v0

    const-string v8, "Mms/smil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_1
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0

    return-object p0
.end method
