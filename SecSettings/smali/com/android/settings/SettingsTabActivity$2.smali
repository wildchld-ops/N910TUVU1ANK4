.class Lcom/android/settings/SettingsTabActivity$2;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsTabActivity;->insertAccountsHeaders(Ljava/util/List;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsTabActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$2;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/preference/PreferenceActivity$Header;Landroid/preference/PreferenceActivity$Header;)I
    .locals 2

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/preference/PreferenceActivity$Header;

    check-cast p2, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsTabActivity$2;->compare(Landroid/preference/PreferenceActivity$Header;Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method
