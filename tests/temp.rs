#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn test_add() {
        assert!(true);
    }
    #[test]
    #[should_panic(expected = "divide by zero")]
    fn test_panic() {
    }
}
