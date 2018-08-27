package io.bootique.tools.template;

public class TemplateException extends RuntimeException {

    public TemplateException(String message, Throwable cause) {
        super(message, cause);
    }

    public TemplateException(String message) {
        super(message);
    }
}
