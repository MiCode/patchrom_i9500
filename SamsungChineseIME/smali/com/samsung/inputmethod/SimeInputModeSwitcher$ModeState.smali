.class public Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;
.super Ljava/lang/Object;
.source "SimeInputModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SimeInputModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeState"
.end annotation


# instance fields
.field public editorInfo:Landroid/view/inputmethod/EditorInfo;

.field public inputLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field public isEditorChoose:Z

.field public mode:I

.field final synthetic this$0:Lcom/samsung/inputmethod/SimeInputModeSwitcher;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher;Landroid/view/inputmethod/EditorInfo;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)V
    .locals 2
    .parameter
    .parameter "editor"
    .parameter "curLang"

    .prologue
    const/4 v1, 0x0

    .line 140
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->this$0:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->inputLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 137
    iput v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->mode:I

    .line 138
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->isEditorChoose:Z

    .line 141
    iput-object p2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 142
    iput-object p3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->inputLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 143
    return-void
.end method
