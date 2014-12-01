.class Lcom/android/mms/settings/TextMessagesSettings$1;
.super Ljava/lang/Object;
.source "TextMessagesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/TextMessagesSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/TextMessagesSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/TextMessagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/TextMessagesSettings$1;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings$1;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
