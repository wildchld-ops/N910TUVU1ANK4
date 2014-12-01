.class Lcom/android/mms/settings/BackgroundStyle$7;
.super Ljava/lang/Object;
.source "BackgroundStyle.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$backgroundSelectorAdapter:Lcom/android/mms/settings/BackgroundSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/BackgroundStyle;Lcom/android/mms/settings/BackgroundSelectorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/BackgroundStyle$7;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iput-object p2, p0, Lcom/android/mms/settings/BackgroundStyle$7;->val$backgroundSelectorAdapter:Lcom/android/mms/settings/BackgroundSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/mms/settings/BackgroundStyle$7;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # getter for: Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/settings/BackgroundStyle;->access$200(Lcom/android/mms/settings/BackgroundStyle;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
    iget-object v1, p0, Lcom/android/mms/settings/BackgroundStyle$7;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # getter for: Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/settings/BackgroundStyle;->access$200(Lcom/android/mms/settings/BackgroundStyle;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/mms/settings/BackgroundStyle$7;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # getter for: Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/settings/BackgroundStyle;->access$200(Lcom/android/mms/settings/BackgroundStyle;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/settings/BackgroundStyle$7;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v2, p0, Lcom/android/mms/settings/BackgroundStyle$7;->val$backgroundSelectorAdapter:Lcom/android/mms/settings/BackgroundSelectorAdapter;

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/IconListAdapter;->buttonToCommand(I)I

    move-result v2

    # invokes: Lcom/android/mms/settings/BackgroundStyle;->startActivityforBackround(I)V
    invoke-static {v1, v2}, Lcom/android/mms/settings/BackgroundStyle;->access$300(Lcom/android/mms/settings/BackgroundStyle;I)V

    return-void
.end method
