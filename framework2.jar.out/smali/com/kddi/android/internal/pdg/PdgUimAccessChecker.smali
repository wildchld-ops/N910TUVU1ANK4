.class public Lcom/kddi/android/internal/pdg/PdgUimAccessChecker;
.super Lcom/kddi/android/internal/pdg/PdgAccessChecker;
.source "PdgUimAccessChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kddi/android/internal/pdg/PdgAccessChecker;-><init>()V

    return-void
.end method

.method public static checkPrivacy(Landroid/content/Context;)Z
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean checkPrivacy( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string/jumbo v1, "parameter error: context is null."

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    const-string v1, "boolean checkPrivacy() end / return = true"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/kddi/android/internal/pdg/PdgUimAccessChecker;->checkPrivacy(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean checkPrivacy() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    move v1, v0

    goto :goto_0
.end method
