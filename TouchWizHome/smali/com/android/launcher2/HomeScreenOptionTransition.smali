.class public Lcom/android/launcher2/HomeScreenOptionTransition;
.super Landroid/app/Activity;
.source "HomeScreenOptionTransition.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mTransitionEffectPreviewEffect1:Landroid/net/Uri;

.field mTransitionEffectPreviewEffect2:Landroid/net/Uri;

.field mTransitionEffectPreviewNone:Landroid/net/Uri;

.field mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "android.resource://com.sec.android.app.launcher/2131165185"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/net/Uri;

    const-string v0, "android.resource://com.sec.android.app.launcher/2131165184"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/net/Uri;

    const-string v0, "android.resource://com.sec.android.app.launcher/2131165186"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/net/Uri;

    return-void
.end method

.method private playVideo()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/launcher2/HomeScreenOptionTransition$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeScreenOptionTransition$1;-><init>(Lcom/android/launcher2/HomeScreenOptionTransition;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1    # Landroid/content/res/Configuration;

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    const v2, 0x7f09005c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setStopMusic(Z)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    const v3, 0x7f020148

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f0f0115

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f0f0113

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f0f0114

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03002c

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    sget v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v2, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->playVideo()V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    const v2, 0x7f09005c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setStopMusic(Z)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    const v3, 0x7f020148

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f0f0115

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f0f0113

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f0f0114

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03002c

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    sget v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v2, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->playVideo()V

    return-void

    :cond_1
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

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

    packed-switch p3, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->playVideo()V

    invoke-virtual {p0, p3}, Lcom/android/launcher2/HomeScreenOptionTransition;->setTransitionEffect(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTransitionEffect(I)V
    .locals 5
    .param p1    # I

    sget v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    if-ne p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "pref_list_transition_effect"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->setWhichTransitionEffect(I)V

    goto :goto_0
.end method
