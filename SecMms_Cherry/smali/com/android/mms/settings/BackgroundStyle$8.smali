.class Lcom/android/mms/settings/BackgroundStyle$8;
.super Ljava/lang/Object;
.source "BackgroundStyle.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    iput-object p1, p0, Lcom/android/mms/settings/BackgroundStyle$8;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iput-object p2, p0, Lcom/android/mms/settings/BackgroundStyle$8;->val$backgroundSelectorAdapter:Lcom/android/mms/settings/BackgroundSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$8;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # getter for: Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/settings/BackgroundStyle;->access$200(Lcom/android/mms/settings/BackgroundStyle;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$8;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # invokes: Lcom/android/mms/settings/BackgroundStyle;->setPrevSelectedItem()V
    invoke-static {v0}, Lcom/android/mms/settings/BackgroundStyle;->access$400(Lcom/android/mms/settings/BackgroundStyle;)V

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$8;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v1, p0, Lcom/android/mms/settings/BackgroundStyle$8;->val$backgroundSelectorAdapter:Lcom/android/mms/settings/BackgroundSelectorAdapter;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/IconListAdapter;->buttonToCommand(I)I

    move-result v1

    # invokes: Lcom/android/mms/settings/BackgroundStyle;->attachAppinfo(I)V
    invoke-static {v0, v1}, Lcom/android/mms/settings/BackgroundStyle;->access$500(Lcom/android/mms/settings/BackgroundStyle;I)V

    const/4 v0, 0x1

    return v0
.end method
