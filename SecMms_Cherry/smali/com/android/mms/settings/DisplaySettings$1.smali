.class Lcom/android/mms/settings/DisplaySettings$1;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/DisplaySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/DisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/DisplaySettings$1;->this$0:Lcom/android/mms/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/settings/DisplaySettings$1;->this$0:Lcom/android/mms/settings/DisplaySettings;

    invoke-virtual {v1, v0}, Lcom/android/mms/settings/DisplaySettings;->onSaveLog(Z)V

    const/4 v1, 0x1

    return v1
.end method
