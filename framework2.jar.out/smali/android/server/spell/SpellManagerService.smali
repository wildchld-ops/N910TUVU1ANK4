.class public Landroid/server/spell/SpellManagerService;
.super Landroid/app/ISpellManager$Stub;
.source "SpellManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/spell/SpellManagerService$MyPackageMonitor;,
        Landroid/server/spell/SpellManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DELAYED_SCAN_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SpellManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mScanRunnable:Ljava/lang/Runnable;

.field private mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/server/spell/SpellManagerService;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/app/ISpellManager$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/server/spell/SpellManagerService$1;

    invoke-direct {v0, p0}, Landroid/server/spell/SpellManagerService$1;-><init>(Landroid/server/spell/SpellManagerService;)V

    iput-object v0, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;-><init>(Landroid/server/spell/SpellManagerService;Landroid/server/spell/SpellManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Landroid/server/spell/SpellManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/server/spell/SpellManagerService;)V
    .locals 0
    .param p0    # Landroid/server/spell/SpellManagerService;

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->updateSpellScrollInfo()V

    return-void
.end method

.method static synthetic access$300(Landroid/server/spell/SpellManagerService;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/server/spell/SpellManagerService;

    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/spell/SpellManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/server/spell/SpellManagerService;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/server/spell/SpellManagerService;->scheduleUpdateSpellScrollInfo(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized ensureScanningCompleted()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getScanner()Landroid/server/spell/SpellScrollScanner;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Landroid/server/spell/SpellManagerService$MyPackageMonitor;-><init>(Landroid/server/spell/SpellManagerService;)V

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    new-instance v0, Landroid/server/spell/SpellScrollScanner;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/server/spell/SpellScrollScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    :cond_0
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleUpdateSpellScrollInfo(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    sget-boolean v0, Landroid/server/spell/SpellManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpellManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleUpdateSpellScrollInfo reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Landroid/server/spell/SpellManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SpellManagerService"

    const-string v1, "Pre-scheduled updates has been skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateSpellScrollInfo()V
    .locals 5

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/spell/SpellScrollScanner;->getInformationHash()I

    move-result v3

    int-to-long v1, v3

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/spell/SpellScrollScanner;->scanSpellScrolls()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/spell/SpellScrollScanner;->getInformationHash()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.spell.action.SPELLSCROLL_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump SpellManagerService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v6, "SpellManagerService"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "==========================================================================="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hashCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/server/spell/SpellManagerService;->getInformationHash()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    if-nez v6, :cond_1

    const-string v6, "No spell scrolls found."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    array-length v6, p3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    aget-object v6, p3, v6

    const-string v7, "-r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Landroid/server/spell/SpellScrollScanner;

    iget-object v7, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/server/spell/SpellScrollScanner;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    invoke-virtual {v6}, Landroid/server/spell/SpellScrollScanner;->scanSpellScrolls()V

    :cond_2
    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    invoke-virtual {v6}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SpellScroll;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpellScroll #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Landroid/app/SpellScroll;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "==========================================================================="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SpellScrolls"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public getInformationHash()I
    .locals 1

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/spell/SpellScrollScanner;->getInformationHash()I

    move-result v0

    return v0
.end method

.method public getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    return-object v0
.end method

.method public getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellById(J)Landroid/app/SpellScroll;
    .locals 3
    .param p1    # J

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/server/spell/SpellScrollScanner;->getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/server/spell/SpellManagerService;->getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpellNameById(J)Ljava/lang/String;
    .locals 2
    .param p1    # J

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/server/spell/SpellScrollScanner;->getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellNames(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SpellScroll;->getSpellNames()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    return-object v0
.end method

.method public getSpellScrollNameById(J)Ljava/lang/String;
    .locals 2
    .param p1    # J

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/server/spell/SpellScrollScanner;->getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpellScrollNamesByPriority(I)Ljava/util/List;
    .locals 1
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollNames(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpellScrollNamesWithIngredientName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollNamesWithIngredientName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/server/spell/SpellScrollScanner;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidSpellScroll(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->isValidSpellScroll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
