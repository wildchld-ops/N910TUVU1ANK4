.class Lcom/google/android/voiceime/ServiceBridge;
.super Ljava/lang/Object;
.source "ServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;,
        Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceBridge"


# instance fields
.field private final mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voiceime/ServiceBridge;-><init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voiceime/ServiceBridge;)Lcom/google/android/voiceime/IntentApiTrigger$Callback;
    .locals 1

    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    return-object v0
.end method


# virtual methods
.method public notifyResult(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;-><init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/voiceime/ServiceBridge$1;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/voiceime/ServiceHelper;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public startVoiceRecognition(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;-><init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;Lcom/google/android/voiceime/ServiceBridge$1;)V

    new-instance v1, Lcom/google/android/voiceime/ServiceBridge$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/voiceime/ServiceBridge$1;-><init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;)V

    # invokes: Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->setServiceCallback(Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    invoke-static {v0, v1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->access$200(Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;Lcom/google/android/voiceime/ServiceHelper$Callback;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/voiceime/ServiceHelper;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
