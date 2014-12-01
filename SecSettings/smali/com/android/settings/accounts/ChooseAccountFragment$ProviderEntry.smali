.class Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
.super Ljava/lang/Object;
.source "ChooseAccountFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->name:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->name:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    const-string v2, "com.osp.app.signin"

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "com.osp.app.signin"

    iget-object v3, p1, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->name:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v0, p1, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->name:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->name:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->compareTo(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)I

    move-result v0

    return v0
.end method
