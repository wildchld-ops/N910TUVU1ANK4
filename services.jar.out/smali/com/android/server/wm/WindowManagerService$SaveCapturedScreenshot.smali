.class Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveCapturedScreenshot"
.end annotation


# instance fields
.field scAppToken:Landroid/os/IBinder;

.field scHeight:I

.field scKey:Ljava/lang/String;

.field scRot:I

.field scTempBitmap:Landroid/graphics/Bitmap;

.field scWidth:I

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->captureFullScreen()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->checkCaptureFolder()V

    return-void
.end method

.method private checkCaptureFolder()V
    .locals 21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensPortFile:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->access$3100(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensLandFile:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->access$3000(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->makingCaptureFolder()Z

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    const-wide/high16 v19, 0x4059000000000000L

    mul-double v13, v17, v19

    const-wide/high16 v17, 0x4000000000000000L

    cmpg-double v17, v13, v17

    if-gez v17, :cond_0

    const-string v17, "*"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeCaptureFiles(Ljava/lang/String;)V

    const-string v17, "WindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "precap there is too small space "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%, so delete captures "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    move-object/from16 v2, v16

    array-length v11, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v11, :cond_4

    aget-object v8, v2, v10

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_2
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v12, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_1

    aget-object v7, v3, v9

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_0
    move-exception v6

    const-string v17, "WindowManager"

    const-string/jumbo v18, "precap the app is removed. capture remove also"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    goto :goto_2

    :cond_3
    const-string v17, "WindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "precap checked file is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensPortFile:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->access$3100(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    move-object/from16 v2, v16

    array-length v11, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_5
    if-ge v10, v11, :cond_8

    aget-object v8, v2, v10

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_6
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_5

    :cond_6
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v12, v3

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v12, :cond_5

    aget-object v7, v3, v9

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :catch_1
    move-exception v6

    const-string v17, "WindowManager"

    const-string/jumbo v18, "precap the app was removed. capture remove also"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensLandFile:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->access$3000(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    const-string v17, "WindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "precap check capture folder "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makingCaptureFolder()Z
    .locals 1

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_2
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFolder(Ljava/io/File;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "land"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensLandFile:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$3000(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensPortFile:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$3100(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private removeOldestCaptureFiles()V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->makingCaptureFolder()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "WindowManager"

    const-string/jumbo v9, "precap There are no folders to delete"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v4, v0, v5

    if-nez v7, :cond_2

    move-object v7, v4

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    move-object v7, v4

    goto :goto_2

    :cond_3
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    array-length v6, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v4, v0, v5

    if-nez v7, :cond_5

    move-object v7, v4

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    move-object v7, v4

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    :cond_7
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "precap oldest file deleted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public captureFullScreen()V
    .locals 28

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    const/16 v17, 0x1

    const/16 v16, 0x0

    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v23, "WindowManager"

    const-string/jumbo v25, "precap displayContent isn\'t"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v17, 0x0

    const v16, 0x7fffffff

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    iget v0, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    iget v0, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v23, v0

    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v23, v0

    move/from16 v0, v23

    add-int/lit16 v3, v0, 0x3e8

    add-int/lit16 v3, v3, 0x2710

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const/4 v14, 0x1

    :goto_2
    if-eqz v14, :cond_4

    const-string v23, "WindowManager"

    const-string/jumbo v25, "precap There is an IME. so it should not be captured."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24

    goto/16 :goto_1

    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v11, v23, -0x1

    :goto_3
    if-ltz v11, :cond_d

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    const/16 v25, 0x3

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v23

    if-nez v23, :cond_5

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    move-object/from16 v4, v22

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v10

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_8

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    :cond_8
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v16, v0

    :cond_9
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v17, 0x1

    :cond_a
    if-eqz v10, :cond_5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_b
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-boolean v0, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v16, v0

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v18

    if-eqz v18, :cond_d

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v23, v0

    const/high16 v25, 0x3f800000

    cmpg-float v23, v23, v25

    if-gez v23, :cond_d

    const-string v23, "WindowManager"

    const-string/jumbo v25, "precap frame isn\'t real fullscreen. it may using onehand operation."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    if-nez v4, :cond_e

    monitor-exit v24

    goto/16 :goto_1

    :cond_e
    if-nez v17, :cond_f

    monitor-exit v24

    goto/16 :goto_1

    :cond_f
    if-nez v15, :cond_10

    monitor-exit v24

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getRotation()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v23, v0

    const/16 v25, 0x3

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    const/16 v23, 0x3

    :goto_5
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v15}, Landroid/view/SurfaceControl;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    const-string v23, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "precap Surface screenshot "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v5

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "precap Screenshot failure taking screenshot for ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") to layer "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    const/16 v23, 0x1

    goto/16 :goto_5
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    return-void
.end method

.method public removeCaptureFiles(Ljava/lang/String;)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->makingCaptureFolder()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WindowManager"

    const-string/jumbo v11, "precap There are no folders to delete"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v10, "*"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v10, "land"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v10, "port"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x0

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    move-object v0, v9

    array-length v8, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v6, v0, v7

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    move-object v0, v9

    array-length v8, v0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v6, v0, v7

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    new-instance v6, Ljava/io/File;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v10

    invoke-direct {v6, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    new-instance v6, Ljava/io/File;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v10

    invoke-direct {v6, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    :cond_5
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "precap file deleted with option "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public run()V
    .locals 33

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    const-string v28, "WindowManager"

    const-string/jumbo v29, "precap there is no component. skip saving"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    const/16 v28, 0x0

    aget-object v12, v25, v28

    const/16 v28, 0x1

    aget-object v9, v25, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    const-string v28, "WindowManager"

    const-string/jumbo v29, "precap there is no Bitmap. skip saving"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v28, "WindowManager"

    const-string/jumbo v29, "precap key is invalid. skip saving"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    const-string v28, "WindowManager"

    const-string/jumbo v29, "precap there is no AppToken. skip saving"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_6

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v28

    move/from16 v0, v28

    if-eq v0, v10, :cond_5

    const/4 v4, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x64

    add-int v15, v15, v28

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x64

    add-int v16, v16, v28

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "precap Black screen. skip capture saving "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v28, v0

    if-nez v28, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    :goto_3
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "precap ImageRotation "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    const-wide/high16 v30, 0x4059000000000000L

    mul-double v18, v28, v30

    const-wide/high16 v28, 0x4000000000000000L

    cmpg-double v28, v18, v28

    if-gez v28, :cond_8

    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "precap there is only "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "% space. remove oldest capture"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeOldestCaptureFiles()V

    :cond_8
    const/4 v13, 0x0

    const/4 v11, 0x0

    const/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    :try_start_0
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_10

    new-instance v21, Ljava/io/File;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    :cond_9
    new-instance v27, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".tmp"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v29, 0x64

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v23, v24

    move-object/from16 v26, v27

    move-object/from16 v20, v21

    move-object v13, v14

    :goto_4
    :try_start_4
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "precap write "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    :cond_a
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensLandFile:Ljava/util/Map;
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$3000(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->clear()V

    if-eqz v13, :cond_b

    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    if-eqz v11, :cond_c

    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    :cond_c
    :goto_6
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "precap copy "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v29, v0

    sget-object v30, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v28 .. v30}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    :goto_7
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v30, v0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v28, -0x1000000

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v29, v0

    sget-object v30, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v28 .. v30}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    goto :goto_7

    :cond_10
    :try_start_6
    new-instance v21, Ljava/io/File;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    :cond_11
    new-instance v27, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".tmp"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v29, 0x64

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v23, v24

    move-object/from16 v26, v27

    move-object/from16 v20, v21

    move-object v13, v14

    goto/16 :goto_4

    :cond_12
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensPortFile:Ljava/util/Map;
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$3100(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    :catch_0
    move-exception v8

    :goto_8
    :try_start_b
    const-string v28, "WindowManager"

    const-string/jumbo v29, "precap file saving FNE. just skip it."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->clear()V

    if-eqz v13, :cond_13

    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    :cond_13
    if-eqz v11, :cond_14

    throw v11
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_14
    :goto_9
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "precap copy "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v8

    :goto_a
    :try_start_d
    const-string v28, "WindowManager"

    const-string/jumbo v29, "precap file saving IOE. just skip it."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->clear()V

    if-eqz v13, :cond_15

    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    :cond_15
    if-eqz v11, :cond_16

    throw v11
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :cond_16
    :goto_b
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "precap copy "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v28

    :goto_c
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->clear()V

    if-eqz v13, :cond_17

    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    :cond_17
    if-eqz v11, :cond_18

    throw v11
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    :cond_18
    :goto_d
    const-string v29, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "precap copy "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v5

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v28

    :catch_2
    move-exception v29

    goto :goto_d

    :catchall_1
    move-exception v28

    move-object/from16 v26, v27

    goto :goto_c

    :catchall_2
    move-exception v28

    move-object/from16 v26, v27

    move-object v13, v14

    goto :goto_c

    :catch_3
    move-exception v28

    goto :goto_b

    :catch_4
    move-exception v8

    move-object/from16 v20, v21

    goto/16 :goto_a

    :catch_5
    move-exception v8

    move-object/from16 v26, v27

    move-object/from16 v20, v21

    goto/16 :goto_a

    :catch_6
    move-exception v8

    move-object/from16 v26, v27

    move-object/from16 v20, v21

    move-object v13, v14

    goto/16 :goto_a

    :catch_7
    move-exception v28

    goto/16 :goto_9

    :catch_8
    move-exception v8

    move-object/from16 v20, v21

    goto/16 :goto_8

    :catch_9
    move-exception v8

    move-object/from16 v26, v27

    move-object/from16 v20, v21

    goto/16 :goto_8

    :catch_a
    move-exception v8

    move-object/from16 v26, v27

    move-object/from16 v20, v21

    move-object v13, v14

    goto/16 :goto_8

    :catch_b
    move-exception v28

    goto/16 :goto_6
.end method
