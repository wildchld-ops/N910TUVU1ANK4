.class Lcom/android/mms/ui/ConversationComposer$18$1;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer$18;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationComposer$18;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer$18;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$18$1;->this$1:Lcom/android/mms/ui/ConversationComposer$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateActivated()V

    :cond_0
    return-void
.end method
