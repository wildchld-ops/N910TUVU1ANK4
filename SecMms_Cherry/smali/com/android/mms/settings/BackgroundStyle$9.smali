.class Lcom/android/mms/settings/BackgroundStyle$9;
.super Ljava/lang/Object;
.source "BackgroundStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/BackgroundStyle;->showBackgroundSelectorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/BackgroundStyle;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/BackgroundStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/BackgroundStyle$9;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$9;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/settings/BackgroundStyle;->access$202(Lcom/android/mms/settings/BackgroundStyle;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$9;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # invokes: Lcom/android/mms/settings/BackgroundStyle;->setPrevSelectedItem()V
    invoke-static {v0}, Lcom/android/mms/settings/BackgroundStyle;->access$400(Lcom/android/mms/settings/BackgroundStyle;)V

    return-void
.end method
