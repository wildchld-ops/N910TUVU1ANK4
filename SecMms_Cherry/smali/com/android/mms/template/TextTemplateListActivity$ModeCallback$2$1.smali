.class Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextTemplateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2$1;->this$2:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2$1;->this$2:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2;

    iget-object v0, v0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2;->this$1:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
