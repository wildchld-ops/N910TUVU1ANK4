.class Landroid/hardware/motion/MotionRecognitionPalmMotion$1;
.super Landroid/database/ContentObserver;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_motion_engine"

    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_touch"

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v2

    iget v2, v2, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    and-int/2addr v2, v0

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    const-string v1, "PalmMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2014 - SURFACE_MOTION_ENGINE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MOTION_MERGED_MUTE_PAUSE & SURFACE_PALM_TOUCH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_swipe"

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmSweep:I

    const-string v1, "PalmMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SURFACE_PALM_SWIPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmSweep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_motion_engine"

    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_touch"

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    const-string v1, "PalmMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2013 - SURFACE_MOTION_ENGINE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SURFACE_PALM_TOUCH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_touch"

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    const-string v1, "PalmMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "else - MOTION_ENGINE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SURFACE_PALM_TOUCH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
