.class synthetic Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;
.super Ljava/lang/Object;
.source "SimeKeyboardTypeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->values()[Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    :try_start_0
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_CN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_HK:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_TW:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->EN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->KOR:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
