.class Lcom/google/android/voiceime/IntentApiTrigger$1;
.super Ljava/lang/Object;
.source "IntentApiTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/IntentApiTrigger$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/IntentApiTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/IntentApiTrigger;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/IntentApiTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger$1;->this$0:Lcom/google/android/voiceime/IntentApiTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecognitionResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger$1;->this$0:Lcom/google/android/voiceime/IntentApiTrigger;

    # invokes: Lcom/google/android/voiceime/IntentApiTrigger;->postResult(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/voiceime/IntentApiTrigger;->access$000(Lcom/google/android/voiceime/IntentApiTrigger;Ljava/lang/String;)V

    return-void
.end method
