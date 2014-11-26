.class Lcom/android/settings/FeatureFinishSettings$1;
.super Ljava/lang/Object;
.source "FeatureFinishSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureFinishSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureFinishSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureFinishSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FeatureFinishSettings$1;->this$0:Lcom/android/settings/FeatureFinishSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/FeatureFinishSettings$1;->this$0:Lcom/android/settings/FeatureFinishSettings;

    # getter for: Lcom/android/settings/FeatureFinishSettings;->mGuideDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/FeatureFinishSettings;->access$000(Lcom/android/settings/FeatureFinishSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
