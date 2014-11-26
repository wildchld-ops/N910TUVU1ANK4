.class Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$4;
.super Ljava/lang/Object;
.source "HandwritingLanguagePreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$4;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$4;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$200(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$4;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$400(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$4;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    # invokes: Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDescriptionString()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$300(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
