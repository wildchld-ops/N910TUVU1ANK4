.class Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;
.super Ljava/lang/Object;
.source "TwGLSettingsMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLRearCameraAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 18

    if-nez p2, :cond_4

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$500()I

    move-result v5

    int-to-float v5, v5

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$600()I

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_LINE_THICKNESS:I

    add-int/2addr v7, v8

    int-to-float v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)I

    move-result v3

    mul-int v17, p1, v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)I

    move-result v3

    if-ge v15, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-nez v6, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    const/16 v4, 0x63

    if-ne v3, v4, :cond_1

    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_LEFT_PADDING:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$1100()I

    move-result v4

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$1200()I

    move-result v5

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_LINE_THICKNESS:I

    add-int/2addr v5, v7

    mul-int/2addr v5, v15

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getOnTouchListener()Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/glview/TwGLView;Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->setOnShortcutBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$OnShortcutBoxCancelListener;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)I

    move-result v3

    mul-int v3, v3, p1

    add-int v17, v3, v15

    goto/16 :goto_0

    :cond_1
    const-string v3, "TwGLSettingsMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing item in mViewList, CommandId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->getCount()I

    move-result v4

    if-eq v3, v4, :cond_3

    new-instance v7, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    const/4 v9, 0x0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$600()I

    move-result v3

    int-to-float v10, v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$500()I

    move-result v3

    int-to-float v11, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_LINE_THICKNESS:I

    int-to-float v12, v3

    const/4 v13, 0x0

    const v14, 0x7f0202ec

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    invoke-virtual {v1, v7}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    move-object/from16 v1, p2

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
