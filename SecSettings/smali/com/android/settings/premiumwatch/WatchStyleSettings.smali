.class public Lcom/android/settings/premiumwatch/WatchStyleSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WatchStyleSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mStyleItem:[Ljava/lang/String;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field mMenuApply:Landroid/view/MenuItem;

.field mMenuCancel:Landroid/view/MenuItem;

.field private mStyleState:I

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setWatchPreviewImage(I)V
    .locals 2

    const v1, 0x7f020564

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020565

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020566

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020567

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020568

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020569

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "WatchStyleSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f0901ba

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f090e2a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuApply:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v6, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v2, 0x7f040278

    invoke-virtual {p1, v2, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0614

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const v2, 0x7f0b00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "premium_watch_style_option"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    iget v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-direct {p0, v2}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->setWatchPreviewImage(I)V

    new-array v2, v6, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    sget-object v2, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    const v3, 0x7f0919cf

    new-array v4, v8, [Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040279

    sget-object v6, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-virtual {v2, v3, v8}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1
.end method

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

    const-string v0, "WatchStyleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick selected style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    iget v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-direct {p0, v0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->setWatchPreviewImage(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    const-string v0, "WatchStyleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected, mStyleState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    iget v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "watch_style_value"

    iget v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
