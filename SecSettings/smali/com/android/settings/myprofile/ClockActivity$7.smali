.class Lcom/android/settings/myprofile/ClockActivity$7;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myprofile/ClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/ClockActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/ClockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myprofile/ClockActivity$7;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$7;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    new-instance v1, Lcom/android/settings/myprofile/EditMyProfileDialog;

    invoke-direct {v1}, Lcom/android/settings/myprofile/EditMyProfileDialog;-><init>()V

    # setter for: Lcom/android/settings/myprofile/ClockActivity;->mEditmyProfileDialog:Lcom/android/settings/myprofile/EditMyProfileDialog;
    invoke-static {v0, v1}, Lcom/android/settings/myprofile/ClockActivity;->access$1102(Lcom/android/settings/myprofile/ClockActivity;Lcom/android/settings/myprofile/EditMyProfileDialog;)Lcom/android/settings/myprofile/EditMyProfileDialog;

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$7;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->mEditmyProfileDialog:Lcom/android/settings/myprofile/EditMyProfileDialog;
    invoke-static {v0}, Lcom/android/settings/myprofile/ClockActivity;->access$1100(Lcom/android/settings/myprofile/ClockActivity;)Lcom/android/settings/myprofile/EditMyProfileDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity$7;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EDIT_PROFILE_DIALOG"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b02f3
        :pswitch_0
    .end packed-switch
.end method
