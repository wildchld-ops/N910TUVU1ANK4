.class public Lcom/google/android/voiceime/VoiceRecognitionTrigger;
.super Ljava/lang/Object;
.source "VoiceRecognitionTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;
    }
.end annotation


# instance fields
.field private mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTrigger:Lcom/google/android/voiceime/Trigger;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    return-void
.end method

.method private getImeTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 2

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/voiceime/ImeTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/ImeTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    return-object v0
.end method

.method private getIntentTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 2

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/voiceime/IntentApiTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/IntentApiTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    return-object v0
.end method

.method private getTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 1

    invoke-static {}, Lcom/google/android/voiceime/ImeTrigger;->init()V

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/google/android/voiceime/ImeTrigger;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getImeTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 6

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private resetTrigger()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/google/android/voiceime/ImeTrigger;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartInputView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0}, Lcom/google/android/voiceime/Trigger;->onStartInputView()V

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0}, Lcom/google/android/voiceime/Trigger;->closing()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->resetTrigger()V

    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    return-void
.end method

.method public register(Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V
    .locals 3

    new-instance v1, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;-><init>(Lcom/google/android/voiceime/VoiceRecognitionTrigger;Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V

    iput-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startVoiceRecognition()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition(Ljava/lang/String;)V

    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/Trigger;->startVoiceRecognition(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
