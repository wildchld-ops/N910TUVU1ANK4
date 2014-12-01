.class public Lcom/siso/ime/framework/touchmodal/TouchModalManager;
.super Ljava/lang/Thread;
.source "TouchModalManager.java"


# static fields
.field private static final DUMP_GRID:I = 0x1

.field static final INIT_GRID:I = 0x0

.field private static final KEYBOARD_HEIGHT:Ljava/lang/String; = "KeyboardHeight"

.field private static final KEYBOARD_LANGUAGE:Ljava/lang/String; = "KeyboardLanguage"

.field private static final KEYBOARD_LAYOUTTYPE:Ljava/lang/String; = "LayoutType"

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "KeyboardMode"

.field private static final KEYBOARD_NKEYS:Ljava/lang/String; = "keyboardnkeys"

.field private static final KEYBOARD_ORIENT:Ljava/lang/String; = "orientation"

.field private static final KEYBOARD_WIDTH:Ljava/lang/String; = "KeyboardWidth"

.field private static final RESET_GRID:I = 0x4

.field private static final RESTORE_GRID:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_GRID:I = 0x2

.field private static final WINDOW_WIDTH:Ljava/lang/String; = "WindowWidth"

.field private static mTouchModalManager:Lcom/siso/ime/framework/touchmodal/TouchModalManager;


# instance fields
.field public final data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

.field private grid_lang:I

.field private grid_layoutType:I

.field private grid_mode:I

.field private grid_nKeys:I

.field private isGridInvalidated:Z

.field private isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

.field public key_horizontal_gap:I

.field public key_vertical_gap:I

.field mHandler:Landroid/os/Handler;

.field private mPrevTouchX:I

.field private mPrevTouchY:I

.field public mTKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mTKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-boolean v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridInvalidated:Z

    iput v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchX:I

    iput v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchY:I

    new-instance v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-direct {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;-><init>()V

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iput v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_mode:I

    iput v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_lang:I

    iput v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_nKeys:I

    iput v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_layoutType:I

    iput v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_horizontal_gap:I

    iput v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_vertical_gap:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)I
    .locals 1

    iget v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_mode:I

    return v0
.end method

.method static synthetic access$002(Lcom/siso/ime/framework/touchmodal/TouchModalManager;I)I
    .locals 0

    iput p1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_mode:I

    return p1
.end method

.method static synthetic access$100(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)I
    .locals 1

    iget v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_layoutType:I

    return v0
.end method

.method static synthetic access$102(Lcom/siso/ime/framework/touchmodal/TouchModalManager;I)I
    .locals 0

    iput p1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_layoutType:I

    return p1
.end method

.method static synthetic access$200(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)I
    .locals 1

    iget v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_lang:I

    return v0
.end method

.method static synthetic access$202(Lcom/siso/ime/framework/touchmodal/TouchModalManager;I)I
    .locals 0

    iput p1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_lang:I

    return p1
.end method

.method static synthetic access$300(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)I
    .locals 1

    iget v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_nKeys:I

    return v0
.end method

.method static synthetic access$302(Lcom/siso/ime/framework/touchmodal/TouchModalManager;I)I
    .locals 0

    iput p1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_nKeys:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridInvalidated:Z

    return v0
.end method

.method static synthetic access$502(Lcom/siso/ime/framework/touchmodal/TouchModalManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridInvalidated:Z

    return p1
.end method

.method static synthetic access$600(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getInstance()Lcom/siso/ime/framework/touchmodal/TouchModalManager;
    .locals 1

    sget-object v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mTouchModalManager:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    invoke-direct {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;-><init>()V

    sput-object v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mTouchModalManager:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    :cond_0
    sget-object v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mTouchModalManager:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "Object should not be cloned."

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(IIIZIII)V
    .locals 3

    iget-object v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KeyboardLanguage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KeyboardMode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "LayoutType"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KeyboardWidth"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KeyboardHeight"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "orientation"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "keyboardnkeys"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getKeyIndex(IIZ[Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 5

    const/4 v2, -0x1

    const/4 v4, -0x5

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v1, v1, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-virtual {v1, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    array-length v1, p4

    if-ge v0, v1, :cond_0

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_0

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchX:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchY:I

    if-lez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x66

    if-eq v1, v2, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x6c

    if-eq v1, v2, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    if-eq v1, v4, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x190

    if-eq v1, v2, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x7a

    if-eq v1, v2, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x75

    if-eq v1, v2, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x71

    if-eq v1, v2, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1

    aget-object v1, p4, v0

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x72

    if-eq v1, v2, :cond_1

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->update(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public gridInitStart(Lcom/diotek/ime/framework/view/DefaultKeyboard;IIIIIIZI)V
    .locals 3

    iget-object v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v2, v2, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "WindowWidth"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KeyboardLanguage"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KeyboardMode"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "LayoutType"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KeyboardWidth"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KeyboardHeight"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "orientation"

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "keyboardnkeys"

    invoke-virtual {v0, v2, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resetGrid()V
    .locals 4

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public restore()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget v3, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchX:I

    iget v4, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchY:I

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput v5, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchX:I

    iput v5, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchY:I

    return-void
.end method

.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;

    invoke-direct {v0, p0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;-><init>(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)V

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setParameter(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setParameter(ZZ)V

    return-void
.end method

.method public update(III)V
    .locals 4

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput p2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchX:I

    iput p3, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->mPrevTouchY:I

    return-void
.end method

.method public updateGrid(III)V
    .locals 2

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->x:I

    if-le v0, p2, :cond_3

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_horizontal_gap:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_3

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-ge v0, p3, :cond_2

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v1, v1, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_vertical_gap:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->increaseBL(III)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-le v0, p3, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_vertical_gap:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->increaseTL(III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->x:I

    if-ge v0, p2, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v1, v1, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_horizontal_gap:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-ge v0, p3, :cond_4

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v1, v1, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_vertical_gap:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_4

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->increaseBR(III)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-le v0, p3, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->key_vertical_gap:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->increaseTR(III)V

    goto/16 :goto_0
.end method
