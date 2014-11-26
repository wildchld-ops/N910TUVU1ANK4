.class public Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiHiddenApDeleteFragment.java"


# instance fields
.field private disableOpacity:F

.field private enableOpacity:F

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mRemoveButton:Landroid/view/View;

.field private mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveMenu:Landroid/view/MenuItem;

.field private mRemoveTextView:Landroid/widget/TextView;

.field private mSelectAllCheckbox:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->enableOpacity:F

    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->disableOpacity:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->removeListItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)F
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    iget v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->enableOpacity:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)F
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    iget v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->disableOpacity:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method private addListItems()V
    .locals 6

    const-string v4, "/data/misc/wifi/hiddenAPs.txt"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private removeListItems()V
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const v6, 0x7f091470

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :try_start_0
    const-string v5, "/data/misc/wifi/hiddenAPs.txt"

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_3
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0901ba

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f090b6d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    const v1, 0x7f02016a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const v6, 0x7f0402a9

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f04028c

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0b0651

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    const v7, 0x7f0b0652

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->disableOpacity:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    new-instance v7, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$1;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$1;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b064f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v6, 0x16

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :goto_0
    const v6, 0x7f0b06d2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v6, 0x7f0b06d3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/view/View;

    new-instance v6, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b054c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->addListItems()V

    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    const v8, 0x1090010

    iget-object v9, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    new-instance v7, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v5

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->removeListItems()V

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->updateHiddenAccessPoint()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method
