.class Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voiceime/ServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionResponse"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRecognitionResult:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method private constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mRecognitionResult:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/voiceime/ServiceBridge$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;-><init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    check-cast p2, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    invoke-virtual {p2}, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->getService()Lcom/google/android/voiceime/ServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mRecognitionResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/voiceime/ServiceHelper;->notifyResult(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
