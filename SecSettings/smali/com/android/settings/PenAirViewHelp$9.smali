.class Lcom/android/settings/PenAirViewHelp$9;
.super Ljava/lang/Object;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewHelp;->showInforPreviewDisableDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewHelp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PenAirViewHelp$9;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$9;->this$0:Lcom/android/settings/PenAirViewHelp;

    # getter for: Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/PenAirViewHelp;->access$100(Lcom/android/settings/PenAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
