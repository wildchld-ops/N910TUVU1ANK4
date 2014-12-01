.class final enum Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;
.super Ljava/lang/Enum;
.source "SwiftkeyJapaneseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "JapaneseInputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

.field public static final enum HIRAGANA:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

.field public static final enum NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

.field public static final enum ROMAJI:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    const-string v1, "ROMAJI"

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->ROMAJI:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    const-string v1, "HIRAGANA"

    invoke-direct {v0, v1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->HIRAGANA:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->ROMAJI:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->HIRAGANA:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->$VALUES:[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;
    .locals 1

    const-class v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    return-object v0
.end method

.method public static values()[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->$VALUES:[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    return-object v0
.end method
