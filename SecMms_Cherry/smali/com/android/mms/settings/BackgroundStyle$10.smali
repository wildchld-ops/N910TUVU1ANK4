.class Lcom/android/mms/settings/BackgroundStyle$10;
.super Ljava/lang/Object;
.source "BackgroundStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/mms/settings/BackgroundStyle$10;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$10;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    # setter for: Lcom/android/mms/settings/BackgroundStyle;->backKeyRepeatCount:I
    invoke-static {v0, v1}, Lcom/android/mms/settings/BackgroundStyle;->access$602(Lcom/android/mms/settings/BackgroundStyle;I)I

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$10;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # getter for: Lcom/android/mms/settings/BackgroundStyle;->backKeyRepeatCount:I
    invoke-static {v0}, Lcom/android/mms/settings/BackgroundStyle;->access$600(Lcom/android/mms/settings/BackgroundStyle;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$10;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # invokes: Lcom/android/mms/settings/BackgroundStyle;->setPrevSelectedItem()V
    invoke-static {v0}, Lcom/android/mms/settings/BackgroundStyle;->access$400(Lcom/android/mms/settings/BackgroundStyle;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
