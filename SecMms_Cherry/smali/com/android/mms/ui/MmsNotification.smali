.class public Lcom/android/mms/ui/MmsNotification;
.super Ljava/lang/Object;
.source "MmsNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsNotification"

.field private static instance:Lcom/android/mms/ui/MmsNotification;

.field private static mediaPlayer:Landroid/media/MediaPlayer;


# instance fields
.field completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/mms/ui/MmsNotification;

    invoke-direct {v0}, Lcom/android/mms/ui/MmsNotification;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MmsNotification;->instance:Lcom/android/mms/ui/MmsNotification;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/ui/MmsNotification$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsNotification$1;-><init>(Lcom/android/mms/ui/MmsNotification;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsNotification;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/android/mms/ui/MmsNotification$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsNotification$2;-><init>(Lcom/android/mms/ui/MmsNotification;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsNotification;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/android/mms/ui/MmsNotification$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsNotification$3;-><init>(Lcom/android/mms/ui/MmsNotification;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsNotification;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public static getInstance()Lcom/android/mms/ui/MmsNotification;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MmsNotification;->instance:Lcom/android/mms/ui/MmsNotification;

    return-object v0
.end method


# virtual methods
.method public playMmsNotice(Landroid/content/Context;I)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MmsNotification;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/android/mms/ui/MmsNotification;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/android/mms/ui/MmsNotification;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v0, Lcom/android/mms/ui/MmsNotification;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/mms/ui/MmsNotification;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/android/mms/ui/MmsNotification;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/mms/ui/MmsNotification;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    sget-object v0, Lcom/android/mms/ui/MmsNotification;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/mms/ui/MmsNotification;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    sget-object v0, Lcom/android/mms/ui/MmsNotification;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    sget-object v0, Lcom/android/mms/ui/MmsNotification;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_1
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v7

    const/4 v8, 0x0

    :try_start_4
    const-string v0, "Mms/MmsNotification"

    const-string v1, "playMmsNotice error"

    invoke-static {v0, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    :goto_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v7

    goto :goto_2
.end method
