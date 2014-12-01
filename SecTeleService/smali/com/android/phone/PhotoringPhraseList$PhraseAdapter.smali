.class public Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoringPhraseList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhotoringPhraseList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhraseAdapter"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/PhotoringPhrase;",
            ">;"
        }
    .end annotation
.end field

.field private maCBox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/PhotoringPhraseList;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhotoringPhraseList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p2    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/PhotoringPhrase;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->this$0:Lcom/android/phone/PhotoringPhraseList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/PhotoringPhrase;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhotoringPhrase;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->getItem(I)Lcom/android/phone/PhotoringPhrase;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhotoringPhrase;

    iget-wide v0, v0, Lcom/android/phone/PhotoringPhrase;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04006d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/PhotoringPhrase;

    const v5, 0x7f0a01a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_0
    const v5, 0x7f0a009b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a01a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->this$0:Lcom/android/phone/PhotoringPhraseList;

    # getter for: Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I
    invoke-static {v5}, Lcom/android/phone/PhotoringPhraseList;->access$000(Lcom/android/phone/PhotoringPhraseList;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_1
    return-object v4

    :cond_0
    const v5, 0x7f0202dd

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v5, 0x7f020138

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public isChecked(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isCheckedAll()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isNonCheckedAll()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setCheckedAll(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
