.class Lcom/android/settings_ex/OwnerInfoSettings$2;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings_ex/OwnerInfoSettings$2;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings$2;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    #getter for: Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/OwnerInfoSettings;->access$000(Lcom/android/settings_ex/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings$2;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    #calls: Lcom/android/settings_ex/OwnerInfoSettings;->showInputMethod()V
    invoke-static {v0}, Lcom/android/settings_ex/OwnerInfoSettings;->access$100(Lcom/android/settings_ex/OwnerInfoSettings;)V

    .line 134
    return-void
.end method
