.class final Lcom/android/incallui/rcs/RcsShareUI$1;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rcs/RcsShareUI;->setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/services/telephony/common/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$call:Lcom/android/services/telephony/common/Call;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/common/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rcs/RcsShareUI$1;->val$call:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/rcs/RcsShareUI$1;->val$call:Lcom/android/services/telephony/common/Call;

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->acceptInvitation(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    return-void
.end method
