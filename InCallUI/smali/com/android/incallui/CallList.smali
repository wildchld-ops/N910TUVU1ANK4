.class public Lcom/android/incallui/CallList;
.super Ljava/lang/Object;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallList$2;,
        Lcom/android/incallui/CallList$CallUpdateListener;,
        Lcom/android/incallui/CallList$Listener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/CallList;


# instance fields
.field private final mCallIconReponsesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mCallMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallTextReponsesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallUpdateListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/incallui/CallList$CallUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/CallList$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/CallList;

    invoke-direct {v0}, Lcom/android/incallui/CallList;-><init>()V

    sput-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallIconReponsesMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/incallui/CallList$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallList$1;-><init>(Lcom/android/incallui/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method private findItem(Ljava/util/List;I)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "iconModeItems is null or size is 0"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_3

    const-string v3, "ignore null icon"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_2

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMG, item is not found! pos: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0
.end method

.method private finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    return-void
.end method

.method private finishDisconnectedCallNotNotify(Lcom/android/services/telephony/common/Call;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    return-void
.end method

.method private getDelayForDisconnect(Lcom/android/services/telephony/common/Call;)I
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    const/16 v1, 0x1388

    sget-object v2, Lcom/android/incallui/CallList$2;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    const/16 v1, 0x1388

    :goto_1
    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    const-string v2, "usa_cdma_emergency_concept"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getEmergencyCallbackMode()I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x1194

    goto :goto_1

    :cond_2
    const/16 v1, 0x1194

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/incallui/CallList;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method private getOnlyMessages(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const-string v5, "getOnlyMessages() iconModeItems is null or size is 0"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_1
    return-object v4

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallList;->findItem(Ljava/util/List;I)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "message"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isCallDead(Lcom/android/services/telephony/common/Call;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyListenersOfChange()V
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private notifyListenersOfDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private updateCallIconMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallIconReponsesMap:Ljava/util/HashMap;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "updateCallIconMap() iconModeItems is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallIconReponsesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateCallInMap(Lcom/android/services/telephony/common/Call;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->getDelayForDisconnect(Lcom/android/services/telephony/common/Call;)I

    move-result v0

    iget-object v4, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    int-to-long v5, v0

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessageDelayed(EVENT_DISCONNECTED_TIMEOUT, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearDisconnectedTimeoutEvent()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "clearDisconnectedTimeoutEvent"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDisconnectedTimeoutEvent - id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->finishDisconnectedCallNotNotify(Lcom/android/services/telephony/common/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public clearOnDisconnect()V
    .locals 5

    const/16 v4, 0x9

    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    if-eq v2, v4, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/services/telephony/common/Call;->setState(I)V

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/Call;->setDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    return-void
.end method

.method public existsLiveCall()Z
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveCall(I)Lcom/android/services/telephony/common/Call;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getActiveOrBackgroundCall(I)Lcom/android/services/telephony/common/Call;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->getActiveCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->getBackgroundCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall(I)Lcom/android/services/telephony/common/Call;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCall(I)Lcom/android/services/telephony/common/Call;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getCallWithState(II)Lcom/android/services/telephony/common/Call;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, p1, :cond_0

    if-lt v2, p2, :cond_2

    move-object v3, v0

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCallWithState(III)Lcom/android/services/telephony/common/Call;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v4

    if-ne v4, p3, :cond_0

    if-lt v2, p2, :cond_2

    move-object v3, v0

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCdmaEarliestCall()Lcom/android/services/telephony/common/Call;
    .locals 9

    const/4 v4, 0x0

    const-wide v1, 0x7fffffffffffffffL

    iget-object v7, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCreateTime()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_0

    move-object v4, v0

    move-wide v1, v5

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getCdmaEarliestCallForTime()Lcom/android/services/telephony/common/Call;
    .locals 9

    const/4 v4, 0x0

    const-wide v1, 0x7fffffffffffffffL

    iget-object v7, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCreateTime()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    move-object v4, v0

    move-wide v1, v5

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getCdmaLatestCallFromId()Lcom/android/services/telephony/common/Call;
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-le v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object v4, v0

    move v1, v3

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getDisconnectedCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectedCall(I)Lcom/android/services/telephony/common/Call;
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectingCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectingCall(I)Lcom/android/services/telephony/common/Call;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public getFirstCall(I)Lcom/android/services/telephony/common/Call;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->getIncomingCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->getOutgoingCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->getDisconnectingCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->getDisconnectedCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getEasyModeState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getLatestIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCallWithStateFromAllCalls(I)Lcom/android/services/telephony/common/Call;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIconResponses(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "reject_call_with_message_icon_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallIconReponsesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "IconMode is not supported! Don\'t call getIconResponses()."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncomingCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIncomingCall(I)Lcom/android/services/telephony/common/Call;
    .locals 2

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIncomingOrActive()Lcom/android/services/telephony/common/Call;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLatestIncomingCall()Lcom/android/services/telephony/common/Call;
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-le v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move-object v4, v0

    move v1, v3

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getOutGoingOrActiveCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getOutgoingCall(I)Lcom/android/services/telephony/common/Call;
    .locals 2

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x14

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/CallList;->getFirstCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getOutgoingCallFromAllCalls()Lcom/android/services/telephony/common/Call;
    .locals 2

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithStateFromAllCalls(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithStateFromAllCalls(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithStateFromAllCalls(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/services/telephony/common/Call;
    .locals 3

    const/4 v2, 0x7

    const/4 v1, 0x1

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getEasyModeState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextResponses(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasActiveCall()Z
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasActiveCall(I)Z
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasConferenceCall()Z
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasIncomingCall()Z
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasIncomingCall(I)Z
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasLiveCall()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasLiveCallExceptDisconnecting()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAlive(Lcom/android/services/telephony/common/Call;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isDialing(Lcom/android/services/telephony/common/Call;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x14

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDualCallExist()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "isDualCallExist: return true..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDualCallExist: isSIM1hasCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSIM2hasCall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isDualConversationState()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/services/telephony/common/Call;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v4, 0x1

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->isDialing(Lcom/android/services/telephony/common/Call;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const-string v6, "isDualConversationState: 1 Dialing and 1 Incoming state"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    if-nez v1, :cond_6

    const-string v6, "isDualConversationState: return true..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_2
    return v6

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDualConversationState: isSIM1hasCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSIM2hasCall="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "hasDialingCall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_2
.end method

.method public isDualDialingCallState()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "isDualDialingCallState: return true..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDualDialingCallState: isSIM1hasCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSIM2hasCall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isDualInComingCallState()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "isDualInComingCallState: return true..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDualInComingCallState: isSIM1hasCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSIM2hasCall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isMultiParty(I)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-le v2, v3, :cond_2

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isOffhook()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyCallUpdateListeners(Lcom/android/services/telephony/common/Call;)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$CallUpdateListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$CallUpdateListener;->onCallStateChanged(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "ims_handle_sip_error_code"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/vt/PSVTCallUtils;->createIMSCallFailError(Lcom/android/services/telephony/common/Call;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/services/telephony/common/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->notifyListenersOfDisconnect(Lcom/android/services/telephony/common/Call;)V

    :cond_1
    return-void
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncoming - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onIncomingCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onIncomingIconMode(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iconmode, onIncoming - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "reject_call_with_message_icon_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "IconMode is not supported! Don\'t call onIncomingIconMode()!"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallList;->updateCallIconMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/CallList;->getOnlyMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onIncomingCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "onUpdate(...)"

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    invoke-direct {p0, v0, v5}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    const-string v2, "reject_call_with_message_icon_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v5}, Lcom/android/incallui/CallList;->updateCallIconMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    return-void
.end method

.method public removeCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
