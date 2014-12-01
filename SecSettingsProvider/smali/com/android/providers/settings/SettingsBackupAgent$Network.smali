.class Lcom/android/providers/settings/SettingsBackupAgent$Network;
.super Ljava/lang/Object;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Network"
.end annotation


# instance fields
.field certUsed:Z

.field public isVendorAp:Z

.field key_mgmt:Ljava/lang/String;

.field final rawLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    return-void
.end method

.method public static readFromStream(Ljava/io/BufferedReader;)Lcom/android/providers/settings/SettingsBackupAgent$Network;
    .locals 4

    new-instance v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    invoke-direct {v2}, Lcom/android/providers/settings/SettingsBackupAgent$Network;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rememberLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v5, p1, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    move v3, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method rememberLine(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "key_mgmt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "client_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    goto :goto_0

    :cond_4
    const-string v0, "ca_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    goto :goto_0

    :cond_5
    const-string v0, "ca_path="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    goto :goto_0

    :cond_6
    const-string v0, "vendor_spec_ssid="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->isVendorAp:Z

    goto :goto_0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "\nnetwork={\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
