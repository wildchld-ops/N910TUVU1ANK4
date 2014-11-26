.class Lcom/android/mms/transaction/MessagingNotificationAlert$2;
.super Ljava/lang/Object;
.source "MessagingNotificationAlert.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotificationAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$2;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    # invokes: Lcom/android/mms/transaction/MessagingNotificationAlert;->speakNewMessageInfo()V
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$100(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    return-void
.end method
