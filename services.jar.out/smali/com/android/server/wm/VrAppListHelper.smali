.class public Lcom/android/server/wm/VrAppListHelper;
.super Ljava/lang/Object;
.source "VrAppListHelper.java"


# static fields
.field private static mInstance:Lcom/android/server/wm/VrAppListHelper;


# instance fields
.field mVRAppList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/VrAppListHelper;->mInstance:Lcom/android/server/wm/VrAppListHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/android/server/wm/VrAppListHelper;->fillVRList()V

    return-void
.end method

.method private fillVRList()V
    .locals 8

    iget-object v6, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v6, "/system/media/vr_list/vr_app_list"

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_6

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    :goto_2
    const/4 v0, 0x0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_3
    const/4 v3, 0x0

    :cond_2
    return-void

    :catch_1
    move-exception v2

    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_3
    :goto_5
    const/4 v0, 0x0

    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v6

    goto :goto_3

    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v0, :cond_4

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_4
    :goto_7
    const/4 v0, 0x0

    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_5
    :goto_8
    const/4 v3, 0x0

    throw v6

    :catch_3
    move-exception v7

    goto :goto_7

    :catch_4
    move-exception v7

    goto :goto_8

    :catch_5
    move-exception v6

    goto :goto_2

    :catch_6
    move-exception v6

    goto :goto_3

    :catch_7
    move-exception v6

    goto :goto_5

    :cond_6
    move-object v0, v1

    :cond_7
    if-eqz v0, :cond_8

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_8
    :goto_9
    const/4 v0, 0x0

    if-eqz v4, :cond_1

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_3

    :catch_8
    move-exception v6

    goto :goto_3

    :catch_9
    move-exception v6

    goto :goto_9

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_6

    :catchall_2
    move-exception v6

    move-object v0, v1

    move-object v3, v4

    goto :goto_6

    :catch_a
    move-exception v2

    move-object v3, v4

    goto :goto_4

    :catch_b
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    goto :goto_4

    :catch_c
    move-exception v2

    goto :goto_1

    :catch_d
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/server/wm/VrAppListHelper;
    .locals 1

    sget-object v0, Lcom/android/server/wm/VrAppListHelper;->mInstance:Lcom/android/server/wm/VrAppListHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/VrAppListHelper;

    invoke-direct {v0}, Lcom/android/server/wm/VrAppListHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/VrAppListHelper;->mInstance:Lcom/android/server/wm/VrAppListHelper;

    :cond_0
    sget-object v0, Lcom/android/server/wm/VrAppListHelper;->mInstance:Lcom/android/server/wm/VrAppListHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isVrPackage(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
