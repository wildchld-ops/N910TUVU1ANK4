.class final Landroid/content/pm/PersonaValidator$LocalBinder;
.super Landroid/content/pm/IPersonaValidator$Stub;
.source "PersonaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PersonaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalBinder"
.end annotation


# instance fields
.field private mValidator:Landroid/content/pm/PersonaValidator;


# direct methods
.method public constructor <init>(Landroid/content/pm/PersonaValidator;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPersonaValidator$Stub;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PersonaValidator$LocalBinder;->mValidator:Landroid/content/pm/PersonaValidator;

    return-void
.end method


# virtual methods
.method public validateCallerForAPI(JLjava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PersonaValidator$LocalBinder;->mValidator:Landroid/content/pm/PersonaValidator;

    if-eqz v0, :cond_0

    const-string v0, "Abstract-PersonaValidator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LocalBinder:validateCallerForAPI() callerid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/PersonaValidator$LocalBinder;->mValidator:Landroid/content/pm/PersonaValidator;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PersonaValidator;->validateCallerForAPI(JLjava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "Abstract-PersonaValidator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalBinder:(no validator assigned) validateCallerForAPI() callerid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method
