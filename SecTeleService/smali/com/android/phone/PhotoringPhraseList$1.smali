.class Lcom/android/phone/PhotoringPhraseList$1;
.super Ljava/lang/Object;
.source "PhotoringPhraseList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoringPhraseList;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoringPhraseList;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoringPhraseList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    iget-object v3, v0, Lcom/android/phone/PhotoringPhraseList;->mcbSelectAll:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    iget-object v0, v0, Lcom/android/phone/PhotoringPhraseList;->mcbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    iget-object v0, v0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    iget-object v3, v3, Lcom/android/phone/PhotoringPhraseList;->mcbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->setCheckedAll(Z)V

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    iget-object v0, v0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    iget-object v3, v3, Lcom/android/phone/PhotoringPhraseList;->mcbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->setCheckedAll(Z)V

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    iget-object v0, v0, Lcom/android/phone/PhotoringPhraseList;->mmiDel:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    iget-object v3, v3, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->isNonCheckedAll()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList$1;->this$0:Lcom/android/phone/PhotoringPhraseList;

    iget-object v3, v3, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->isNonCheckedAll()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
