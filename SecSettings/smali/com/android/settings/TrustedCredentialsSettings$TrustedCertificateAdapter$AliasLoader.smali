.class Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field mList:Landroid/view/View;

.field mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2200(Lcom/android/settings/TrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    # invokes: Lcom/android/settings/TrustedCredentialsSettings$Tab;->getAliases(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2300(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    const/4 v11, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2200(Lcom/android/settings/TrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2200(Lcom/android/settings/TrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$1900(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$1900(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$800(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
