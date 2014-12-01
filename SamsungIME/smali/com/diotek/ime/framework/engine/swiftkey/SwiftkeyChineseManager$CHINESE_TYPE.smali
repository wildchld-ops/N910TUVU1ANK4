.class final enum Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;
.super Ljava/lang/Enum;
.source "SwiftkeyChineseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CHINESE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

.field public static final enum CANGJIE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

.field public static final enum NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

.field public static final enum PINYIN:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

.field public static final enum STROKE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

.field public static final enum ZHUYIN:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    const-string v1, "PINYIN"

    invoke-direct {v0, v1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->PINYIN:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    const-string v1, "CANGJIE"

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->CANGJIE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    const-string v1, "ZHUYIN"

    invoke-direct {v0, v1, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->ZHUYIN:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    const-string v1, "STROKE"

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->STROKE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->PINYIN:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->CANGJIE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->ZHUYIN:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->STROKE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->$VALUES:[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;
    .locals 1

    const-class v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->$VALUES:[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    return-object v0
.end method
