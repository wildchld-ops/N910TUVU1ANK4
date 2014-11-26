.class Lcom/android/mms/settings/MultimediamessagesSettings$1;
.super Ljava/lang/Object;
.source "MultimediamessagesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/MultimediamessagesSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/MultimediamessagesSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/MultimediamessagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/MultimediamessagesSettings$1;->this$0:Lcom/android/mms/settings/MultimediamessagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/settings/MultimediamessagesSettings$1;->this$0:Lcom/android/mms/settings/MultimediamessagesSettings;

    # invokes: Lcom/android/mms/settings/MultimediamessagesSettings;->updateGroupMmsPreference()V
    invoke-static {v0}, Lcom/android/mms/settings/MultimediamessagesSettings;->access$000(Lcom/android/mms/settings/MultimediamessagesSettings;)V

    return-void
.end method
