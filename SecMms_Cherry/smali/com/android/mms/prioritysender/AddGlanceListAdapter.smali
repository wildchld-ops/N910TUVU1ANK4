.class public Lcom/android/mms/prioritysender/AddGlanceListAdapter;
.super Landroid/widget/CursorAdapter;
.source "AddGlanceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;,
        Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/AddGlanceListAdapter"


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field private mOnAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

.field private mOnContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->mFactory:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/prioritysender/AddGlanceListAdapter;)Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->mOnAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v9, 0x1

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v9, 0x7f0b004a

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x7f0b004b

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v10}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v9, 0x7f0b0049

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    long-to-int v9, v6

    invoke-static {p2, v9}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, p2, v9}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v9, 0x7f0b004c

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0447

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;

    invoke-direct {v9, p0, v1, v8}, Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;-><init>(Lcom/android/mms/prioritysender/AddGlanceListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v9, "Mms/AddGlanceListAdapter"

    const-string v10, "bindView() complete"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->mOnContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->mOnContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/prioritysender/AddGlanceListAdapter;)V

    :cond_0
    return-void
.end method

.method public setOnAddClickListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->mOnAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->mOnContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

    return-void
.end method
