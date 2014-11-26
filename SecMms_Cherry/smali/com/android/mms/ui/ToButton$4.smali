.class Lcom/android/mms/ui/ToButton$4;
.super Ljava/lang/Object;
.source "ToButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ToButton;

.field final synthetic val$l:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ToButton;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ToButton$4;->this$0:Lcom/android/mms/ui/ToButton;

    iput-object p2, p0, Lcom/android/mms/ui/ToButton$4;->val$l:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ToButton$4;->val$l:Landroid/view/View$OnFocusChangeListener;

    iget-object v1, p0, Lcom/android/mms/ui/ToButton$4;->this$0:Lcom/android/mms/ui/ToButton;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ToButton$4;->this$0:Lcom/android/mms/ui/ToButton;

    # getter for: Lcom/android/mms/ui/ToButton;->mRemoveIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/mms/ui/ToButton;->access$000(Lcom/android/mms/ui/ToButton;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ToButton$4;->val$l:Landroid/view/View$OnFocusChangeListener;

    iget-object v1, p0, Lcom/android/mms/ui/ToButton$4;->this$0:Lcom/android/mms/ui/ToButton;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0
.end method
