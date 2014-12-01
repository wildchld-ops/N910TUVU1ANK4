.class public abstract Landroid/content/pm/PersonaValidator;
.super Ljava/lang/Object;
.source "PersonaValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PersonaValidator$LocalBinder;
    }
.end annotation


# static fields
.field public static final METHOD_RESETPERSONA:Ljava/lang/String; = "resetPersona"

.field private static final TAG:Ljava/lang/String; = "Abstract-PersonaValidator"


# instance fields
.field private mActualValidator:Landroid/content/pm/PersonaValidator$LocalBinder;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaValidator;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValidator()Landroid/content/pm/IPersonaValidator;
    .locals 2

    iget-object v1, p0, Landroid/content/pm/PersonaValidator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PersonaValidator;->mActualValidator:Landroid/content/pm/PersonaValidator$LocalBinder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/PersonaValidator$LocalBinder;

    invoke-direct {v0, p0}, Landroid/content/pm/PersonaValidator$LocalBinder;-><init>(Landroid/content/pm/PersonaValidator;)V

    iput-object v0, p0, Landroid/content/pm/PersonaValidator;->mActualValidator:Landroid/content/pm/PersonaValidator$LocalBinder;

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PersonaValidator;->mActualValidator:Landroid/content/pm/PersonaValidator$LocalBinder;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public validateCallerForAPI(JLjava/lang/String;I)I
    .locals 3

    const-string v0, "Abstract-PersonaValidator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dummy: validateCallerForAPI() callerid :"

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

    return v0
.end method
