.class Lcom/android/settings_ex/MasterClear$3;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClear;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings_ex/MasterClear$3;->this$0:Lcom/android/settings_ex/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear$3;->this$0:Lcom/android/settings_ex/MasterClear;

    #getter for: Lcom/android/settings_ex/MasterClear;->mExternalStorage:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/MasterClear;->access$200(Lcom/android/settings_ex/MasterClear;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 221
    return-void
.end method
