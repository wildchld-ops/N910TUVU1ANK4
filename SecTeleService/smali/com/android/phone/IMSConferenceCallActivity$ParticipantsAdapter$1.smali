.class Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter$1;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter$1;->this$1:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    iput p2, p0, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter$1;->this$1:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    iget-object v0, v0, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    iget v1, p0, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter$1;->val$pos:I

    # invokes: Lcom/android/phone/IMSConferenceCallActivity;->onAdapterButtonClicked(Landroid/view/View;I)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$2700(Lcom/android/phone/IMSConferenceCallActivity;Landroid/view/View;I)V

    return-void
.end method
