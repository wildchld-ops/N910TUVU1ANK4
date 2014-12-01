.class Lcom/android/settings/personalvibration/PersonalVibration$3;
.super Ljava/lang/Object;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalvibration/PersonalVibration;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/PersonalVibration;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalvibration/PersonalVibration$3;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$3;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
