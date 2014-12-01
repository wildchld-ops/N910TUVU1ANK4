.class Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment$1;
.super Ljava/lang/Object;
.source "CallCardMWDriveLinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;->showManageConferenceCallBtn(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment$1;->this$0:Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment$1;->this$0:Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->manageConferenceButtonClicked()V

    return-void
.end method
