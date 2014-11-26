.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field public volatile running:Z

.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 1

    iput-object p1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 69

    const/16 v2, 0xa

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    const/16 v2, 0xa

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    const/16 v2, 0xf

    new-array v0, v2, [Landroid/media/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v56, v0

    const/16 v46, 0x0

    :goto_0
    const/16 v2, 0xa

    move/from16 v0, v46

    if-ge v0, v2, :cond_0

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v46

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v46

    add-int/lit8 v46, v46, 0x1

    goto :goto_0

    :cond_0
    const/16 v46, 0x0

    :goto_1
    const/16 v2, 0xf

    move/from16 v0, v46

    if-ge v0, v2, :cond_1

    new-instance v2, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    aput-object v2, v56, v46

    add-int/lit8 v46, v46, 0x1

    goto :goto_1

    :cond_1
    const/16 v46, 0x0

    :goto_2
    const/16 v2, 0xf

    move/from16 v0, v46

    if-ge v0, v2, :cond_2

    aget-object v2, v56, v46

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$302(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    aget-object v2, v56, v46

    const-wide/16 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$402(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    aget-object v2, v56, v46

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$502(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    aget-object v2, v56, v46

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    add-int/lit8 v46, v46, 0x1

    goto :goto_2

    :cond_2
    new-instance v37, Landroid/util/DisplayMetrics;

    invoke-direct/range {v37 .. v37}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/view/WindowManager;

    const v52, 0x38d1b717

    const v53, 0x38d1b717

    const/high16 v27, 0x3f800000

    const/high16 v28, 0x3f800000

    const/16 v57, 0x0

    const/16 v54, 0x0

    const/16 v45, 0x0

    const/16 v44, 0x0

    const/16 v42, 0x1

    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->normal:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$802(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bCap:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$902(Landroid/media/WFDUibcManager;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bSim:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1002(Landroid/media/WFDUibcManager;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bNum:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1102(Landroid/media/WFDUibcManager;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bScroll:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1202(Landroid/media/WFDUibcManager;Z)Z

    const/16 v39, 0x0

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v2, :cond_45

    invoke-virtual/range {p0 .. p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v41

    if-eqz v41, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/ActivityManager;

    const/16 v2, 0x14

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v67

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_4

    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->Camera:Landroid/media/WFDUibcManager$UIBC_Mode;

    :cond_4
    move-object/from16 v0, v41

    instance-of v2, v0, Landroid/view/MotionEvent;

    if-eqz v2, :cond_1c

    const/4 v12, 0x0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v55, v0

    const/16 v47, 0x0

    :goto_4
    move/from16 v0, v47

    move/from16 v1, v55

    if-ge v0, v1, :cond_5

    aget v48, v34, v47

    move-object/from16 v0, v38

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v39

    move-object/from16 v0, v39

    iget v2, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    move/from16 v12, v48

    :cond_5
    move-object/from16 v59, v41

    check-cast v59, Landroid/view/MotionEvent;

    invoke-interface/range {v68 .. v68}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$1302(Landroid/media/WFDUibcManager;J)J

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    move-object/from16 v0, v59

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object/from16 v0, v59

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v2, 0x0

    aget-object v2, v8, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v2, 0x0

    aget-object v2, v8, v2

    const/4 v3, 0x3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    aget-object v4, v9, v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    aget-object v4, v9, v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v2, 0x0

    aget-object v2, v9, v2

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v2, 0x0

    aget-object v2, v9, v2

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1300(Landroid/media/WFDUibcManager;)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$1300(Landroid/media/WFDUibcManager;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000

    const/high16 v14, 0x3f800000

    const/16 v15, 0xa

    const/16 v16, 0x0

    const/16 v17, 0x2002

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v57

    const/16 v2, 0x2002

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/16 v57, 0x0

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_4

    :cond_7
    invoke-interface/range {v68 .. v68}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v66

    const v2, 0x38d1b717

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v52, v2, v3

    const v2, 0x38d1b717

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v53, v2, v3

    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float v32, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v3

    div-float v31, v2, v3

    const/high16 v2, 0x3f800000

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v50, v2, v3

    const/high16 v2, 0x3f800000

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v51, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mSPCOrientation:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1602(Landroid/media/WFDUibcManager;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1800(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const/16 v44, 0x1

    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->forceValue:Landroid/media/WFDUibcManager$UIBC_Mode;

    :cond_9
    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v36

    const/16 v46, 0x0

    :goto_5
    move/from16 v0, v46

    move/from16 v1, v36

    if-ge v0, v1, :cond_1a

    aget-object v2, v8, v46

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    aget-object v2, v9, v46

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    aget-object v2, v8, v46

    move-object/from16 v0, v59

    move/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v2, v9, v46

    move-object/from16 v0, v59

    move/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    sget-object v2, Landroid/media/WFDUibcManager$2;->$SwitchMap$android$media$WFDUibcManager$UIBC_Mode:[I

    invoke-virtual/range {v29 .. v29}, Landroid/media/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, v35

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    cmpg-float v2, v32, v31

    if-gez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v51

    div-float v61, v2, v50

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v61

    const/high16 v3, 0x40000000

    div-float v64, v2, v3

    const v2, 0x38d1b717

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v62, v2, v3

    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v62, v64

    div-float v3, v3, v61

    mul-float v27, v2, v3

    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    aget-object v2, v9, v46

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v2, v9, v46

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    :cond_a
    :goto_6
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x13b

    if-le v2, v3, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    move/from16 v0, v66

    # += operator for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v0}, Landroid/media/WFDUibcManager;->access$1712(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    :cond_d
    cmpg-float v2, v32, v31

    if-gez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v51

    div-float v61, v2, v50

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v61

    const/high16 v3, 0x40000000

    div-float v64, v2, v3

    const v2, 0x38d1b717

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v62, v2, v3

    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v62, v64

    div-float v3, v3, v61

    mul-float v27, v2, v3

    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    if-nez v2, :cond_13

    aget-object v2, v9, v46

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v2, v9, v46

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x73

    if-ge v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x1

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x73

    if-lt v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0xe1

    if-ge v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x2

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x3

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_7

    :cond_11
    cmpl-float v2, v32, v31

    if-lez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v50

    div-float v60, v2, v51

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v60

    const/high16 v3, 0x40000000

    div-float v64, v2, v3

    const v2, 0x38d1b717

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v63, v2, v3

    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v52, v2

    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v63, v64

    div-float v3, v3, v60

    mul-float v28, v2, v3

    goto/16 :goto_8

    :cond_12
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v52, v2

    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    goto/16 :goto_8

    :cond_13
    aget-object v2, v9, v46

    const/4 v3, 0x0

    move-object/from16 v0, v37

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v4, v4, v27

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v2, v9, v46

    const/4 v3, 0x1

    move-object/from16 v0, v37

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v4, v4, v28

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v50

    div-float v61, v2, v51

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v61

    const/high16 v3, 0x40000000

    div-float v64, v2, v3

    const v2, 0x38d1b717

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v62, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sub-float v4, v62, v64

    div-float v4, v4, v61

    mul-float/2addr v3, v4

    sub-float v28, v2, v3

    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v27, v52, v2

    :goto_9
    aget-object v2, v9, v46

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v2, v9, v46

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v62, v64

    div-float v3, v3, v61

    mul-float v28, v2, v3

    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v3, v3, v52

    sub-float v27, v2, v3

    goto :goto_9

    :pswitch_1
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v52, v2

    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    aget-object v2, v9, v46

    const/4 v3, 0x0

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v52

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v2, v9, v46

    const/4 v3, 0x1

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v53

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_17
    cmpl-float v2, v32, v31

    if-lez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v50

    div-float v60, v2, v51

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v60

    const/high16 v3, 0x40000000

    div-float v64, v2, v3

    const v2, 0x38d1b717

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v63, v2, v3

    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v52, v2

    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v63, v64

    div-float v3, v3, v60

    mul-float v28, v2, v3

    aget-object v2, v9, v46

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v2, v9, v46

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_18
    aget-object v2, v9, v46

    const/4 v3, 0x0

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v52

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v2, v9, v46

    const/4 v3, 0x1

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v53

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_19
    const-string v2, "WFDUibcManager"

    const-string v3, "6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v2, v32, v31

    if-gez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v51

    div-float v61, v2, v50

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v61

    const/high16 v3, 0x40000000

    div-float v64, v2, v3

    const v2, 0x38d1b717

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v62, v2, v3

    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v62, v64

    mul-float/2addr v2, v3

    div-float v27, v2, v61

    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    aget-object v2, v9, v46

    const/4 v3, 0x0

    move-object/from16 v0, v37

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v62, v64

    mul-float/2addr v4, v5

    div-float v4, v4, v61

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v2, v9, v46

    const/4 v3, 0x1

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v53

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_1a
    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$1302(Landroid/media/WFDUibcManager;J)J

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1300(Landroid/media/WFDUibcManager;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000

    const/high16 v14, 0x3f800000

    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v57

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/16 v57, 0x0

    goto/16 :goto_3

    :cond_1c
    move-object/from16 v0, v41

    instance-of v2, v0, Landroid/view/KeyEvent;

    if-eqz v2, :cond_3

    move-object/from16 v30, v41

    check-cast v30, Landroid/view/KeyEvent;

    const/16 v43, -0x1

    const/16 v40, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1902(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const-wide/16 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    const/4 v12, 0x0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v55, v0

    const/16 v47, 0x0

    :goto_a
    move/from16 v0, v47

    move/from16 v1, v55

    if-ge v0, v1, :cond_1d

    aget v48, v34, v47

    move-object/from16 v0, v38

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v39

    move-object/from16 v0, v39

    iget v2, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_21

    move/from16 v12, v48

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1800(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    :cond_1e
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_35

    const/16 v65, 0x0

    :goto_b
    const/16 v2, 0xf

    move/from16 v0, v65

    if-ge v0, v2, :cond_22

    aget-object v2, v56, v65

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$300(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1f

    move/from16 v40, v65

    :cond_1f
    aget-object v2, v56, v65

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$300(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_20

    move/from16 v43, v65

    :cond_20
    add-int/lit8 v65, v65, 0x1

    goto :goto_b

    :cond_21
    add-int/lit8 v47, v47, 0x1

    goto :goto_a

    :cond_22
    if-gez v43, :cond_33

    if-ltz v40, :cond_23

    aget-object v2, v56, v40

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$302(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    aget-object v2, v56, v40

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$402(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    aget-object v2, v56, v40

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    aget-object v2, v56, v40

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$502(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1976(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    :goto_c
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_24

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_26

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x1

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x40

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    :cond_25
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x80

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    :cond_26
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_27

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_29

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x2

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x10

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    :cond_28
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x20

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    :cond_29
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_2a

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_2c

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x1000

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x2000

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    :cond_2b
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x4000

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    :cond_2c
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x8

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    :cond_2d
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$2000(Landroid/media/WFDUibcManager;)J

    move-result-wide v13

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v15

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v17

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$2100(Landroid/media/WFDUibcManager;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$800(Landroid/media/WFDUibcManager;)I

    move-result v20

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1900(Landroid/media/WFDUibcManager;)I

    move-result v23

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getSource()I

    move-result v25

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v26

    move/from16 v24, v12

    invoke-static/range {v13 .. v26}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    move-object/from16 v0, v54

    iput-object v0, v2, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    :cond_2e
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2f

    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_31

    :cond_2f
    new-instance v58, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v58

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "app_name"

    const-string v3, "finish"

    move-object/from16 v0, v58

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_44

    const-string v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v58

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_30
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v58

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_31
    if-ltz v43, :cond_32

    aget-object v2, v56, v43

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$302(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    aget-object v2, v56, v43

    const-wide/16 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$402(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    aget-object v2, v56, v43

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    aget-object v2, v56, v43

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$502(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    :cond_32
    const/16 v54, 0x0

    goto/16 :goto_3

    :cond_33
    aget-object v2, v56, v43

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$676(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    aget-object v2, v56, v43

    # operator++ for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$508(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    aget-object v2, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$500(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_34

    aget-object v2, v56, v43

    const/16 v3, 0x80

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$676(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$400(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$600(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1976(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$500(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_c

    :cond_35
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    const/16 v65, 0x0

    :goto_f
    const/16 v2, 0xf

    move/from16 v0, v65

    if-ge v0, v2, :cond_37

    aget-object v2, v56, v65

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$300(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_36

    move/from16 v43, v65

    :cond_36
    add-int/lit8 v65, v65, 0x1

    goto :goto_f

    :cond_37
    if-ltz v43, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$400(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$600(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1976(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    :goto_10
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_38

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3a

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, -0x2

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x41

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    :cond_39
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x81

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    :cond_3a
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_3b

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3d

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, -0x3

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x11

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    :cond_3c
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x21

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    :cond_3d
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_3e

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_40

    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x1001

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x2001

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    :cond_3f
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x4001

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    :cond_40
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x9

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    :cond_41
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->bCap:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$900(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-nez v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x100

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/high16 v3, 0x100000

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x1

    # setter for: Landroid/media/WFDUibcManager;->bCap:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$902(Landroid/media/WFDUibcManager;Z)Z

    goto/16 :goto_d

    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1976(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_10

    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const v3, -0x100001

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x101

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bCap:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$902(Landroid/media/WFDUibcManager;Z)Z

    goto/16 :goto_d

    :cond_44
    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_30

    const-string v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_e

    :cond_45
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
